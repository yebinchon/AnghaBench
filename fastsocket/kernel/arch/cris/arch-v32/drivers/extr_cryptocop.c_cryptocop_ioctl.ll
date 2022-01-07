; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_cryptocop_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_cryptocop_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }

@ETRAXCRYPTOCOP_IOCTYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"cryptocop_ioctl: wrong type\0A\00", align 1
@ENOTTY = common dso_local global i32 0, align 4
@CRYPTOCOP_IO_MAXNR = common dso_local global i64 0, align 8
@_IOC_READ = common dso_local global i32 0, align 4
@VERIFY_WRITE = common dso_local global i32 0, align 4
@_IOC_WRITE = common dso_local global i32 0, align 4
@VERIFY_READ = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"cryptocop_ioctl: unknown command\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, i32, i64)* @cryptocop_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cryptocop_ioctl(%struct.inode* %0, %struct.file* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call i64 @_IOC_TYPE(i32 %11)
  %13 = load i64, i64* @ETRAXCRYPTOCOP_IOCTYPE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @DEBUG_API(i32 %16)
  %18 = load i32, i32* @ENOTTY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %92

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @_IOC_NR(i32 %21)
  %23 = load i64, i64* @CRYPTOCOP_IO_MAXNR, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOTTY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %92

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @_IOC_DIR(i32 %29)
  %31 = load i32, i32* @_IOC_READ, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load i32, i32* @VERIFY_WRITE, align 4
  %36 = load i64, i64* %9, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @_IOC_SIZE(i32 %38)
  %40 = call i32 @access_ok(i32 %35, i8* %37, i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %10, align 4
  br label %61

44:                                               ; preds = %28
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @_IOC_DIR(i32 %45)
  %47 = load i32, i32* @_IOC_WRITE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %44
  %51 = load i32, i32* @VERIFY_READ, align 4
  %52 = load i64, i64* %9, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @_IOC_SIZE(i32 %54)
  %56 = call i32 @access_ok(i32 %51, i8* %53, i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %50, %44
  br label %61

61:                                               ; preds = %60, %34
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* @EFAULT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %92

67:                                               ; preds = %61
  %68 = load i32, i32* %8, align 4
  switch i32 %68, label %87 [
    i32 129, label %69
    i32 130, label %75
    i32 128, label %81
  ]

69:                                               ; preds = %67
  %70 = load %struct.inode*, %struct.inode** %6, align 8
  %71 = load %struct.file*, %struct.file** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @cryptocop_ioctl_create_session(%struct.inode* %70, %struct.file* %71, i32 %72, i64 %73)
  store i32 %74, i32* %5, align 4
  br label %92

75:                                               ; preds = %67
  %76 = load %struct.inode*, %struct.inode** %6, align 8
  %77 = load %struct.file*, %struct.file** %7, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @cryptocop_ioctl_close_session(%struct.inode* %76, %struct.file* %77, i32 %78, i64 %79)
  store i32 %80, i32* %5, align 4
  br label %92

81:                                               ; preds = %67
  %82 = load %struct.inode*, %struct.inode** %6, align 8
  %83 = load %struct.file*, %struct.file** %7, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @cryptocop_ioctl_process(%struct.inode* %82, %struct.file* %83, i32 %84, i64 %85)
  store i32 %86, i32* %5, align 4
  br label %92

87:                                               ; preds = %67
  %88 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %89 = call i32 @DEBUG_API(i32 %88)
  %90 = load i32, i32* @ENOTTY, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %87, %81, %75, %69, %64, %25, %15
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i64 @_IOC_TYPE(i32) #1

declare dso_local i32 @DEBUG_API(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i64 @_IOC_NR(i32) #1

declare dso_local i32 @_IOC_DIR(i32) #1

declare dso_local i32 @access_ok(i32, i8*, i32) #1

declare dso_local i32 @_IOC_SIZE(i32) #1

declare dso_local i32 @cryptocop_ioctl_create_session(%struct.inode*, %struct.file*, i32, i64) #1

declare dso_local i32 @cryptocop_ioctl_close_session(%struct.inode*, %struct.file*, i32, i64) #1

declare dso_local i32 @cryptocop_ioctl_process(%struct.inode*, %struct.file*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
