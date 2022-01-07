; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_cryptocop_ioctl_close_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_cryptocop_ioctl_close_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.cryptocop_private* }
%struct.cryptocop_private = type { i64, %struct.cryptocop_private* }
%struct.strcop_session_op = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"cryptocop_ioctl_close_session\0A\00", align 1
@VERIFY_READ = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"cryptocop_ioctl_close_session: session %lld not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, i32, i64)* @cryptocop_ioctl_close_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cryptocop_ioctl_close_session(%struct.inode* %0, %struct.file* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.cryptocop_private*, align 8
  %11 = alloca %struct.cryptocop_private*, align 8
  %12 = alloca %struct.strcop_session_op*, align 8
  %13 = alloca %struct.strcop_session_op, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %15 = load %struct.file*, %struct.file** %7, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load %struct.cryptocop_private*, %struct.cryptocop_private** %16, align 8
  store %struct.cryptocop_private* %17, %struct.cryptocop_private** %10, align 8
  store %struct.cryptocop_private* null, %struct.cryptocop_private** %11, align 8
  %18 = load i64, i64* %9, align 8
  %19 = inttoptr i64 %18 to %struct.strcop_session_op*
  store %struct.strcop_session_op* %19, %struct.strcop_session_op** %12, align 8
  %20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @DEBUG(i32 %20)
  %22 = load i32, i32* @VERIFY_READ, align 4
  %23 = load %struct.strcop_session_op*, %struct.strcop_session_op** %12, align 8
  %24 = call i32 @access_ok(i32 %22, %struct.strcop_session_op* %23, i32 8)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @EFAULT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %92

29:                                               ; preds = %4
  %30 = load %struct.strcop_session_op*, %struct.strcop_session_op** %12, align 8
  %31 = call i32 @copy_from_user(%struct.strcop_session_op* %13, %struct.strcop_session_op* %30, i32 8)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EFAULT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %92

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %50, %37
  %39 = load %struct.cryptocop_private*, %struct.cryptocop_private** %10, align 8
  %40 = icmp ne %struct.cryptocop_private* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load %struct.cryptocop_private*, %struct.cryptocop_private** %10, align 8
  %43 = getelementptr inbounds %struct.cryptocop_private, %struct.cryptocop_private* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.strcop_session_op, %struct.strcop_session_op* %13, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %44, %46
  br label %48

48:                                               ; preds = %41, %38
  %49 = phi i1 [ false, %38 ], [ %47, %41 ]
  br i1 %49, label %50, label %55

50:                                               ; preds = %48
  %51 = load %struct.cryptocop_private*, %struct.cryptocop_private** %10, align 8
  store %struct.cryptocop_private* %51, %struct.cryptocop_private** %11, align 8
  %52 = load %struct.cryptocop_private*, %struct.cryptocop_private** %10, align 8
  %53 = getelementptr inbounds %struct.cryptocop_private, %struct.cryptocop_private* %52, i32 0, i32 1
  %54 = load %struct.cryptocop_private*, %struct.cryptocop_private** %53, align 8
  store %struct.cryptocop_private* %54, %struct.cryptocop_private** %10, align 8
  br label %38

55:                                               ; preds = %48
  %56 = load %struct.cryptocop_private*, %struct.cryptocop_private** %10, align 8
  %57 = icmp ne %struct.cryptocop_private* %56, null
  br i1 %57, label %58, label %84

58:                                               ; preds = %55
  %59 = load %struct.cryptocop_private*, %struct.cryptocop_private** %11, align 8
  %60 = icmp ne %struct.cryptocop_private* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.cryptocop_private*, %struct.cryptocop_private** %10, align 8
  %63 = getelementptr inbounds %struct.cryptocop_private, %struct.cryptocop_private* %62, i32 0, i32 1
  %64 = load %struct.cryptocop_private*, %struct.cryptocop_private** %63, align 8
  %65 = load %struct.cryptocop_private*, %struct.cryptocop_private** %11, align 8
  %66 = getelementptr inbounds %struct.cryptocop_private, %struct.cryptocop_private* %65, i32 0, i32 1
  store %struct.cryptocop_private* %64, %struct.cryptocop_private** %66, align 8
  br label %73

67:                                               ; preds = %58
  %68 = load %struct.cryptocop_private*, %struct.cryptocop_private** %10, align 8
  %69 = getelementptr inbounds %struct.cryptocop_private, %struct.cryptocop_private* %68, i32 0, i32 1
  %70 = load %struct.cryptocop_private*, %struct.cryptocop_private** %69, align 8
  %71 = load %struct.file*, %struct.file** %7, align 8
  %72 = getelementptr inbounds %struct.file, %struct.file* %71, i32 0, i32 0
  store %struct.cryptocop_private* %70, %struct.cryptocop_private** %72, align 8
  br label %73

73:                                               ; preds = %67, %61
  %74 = load %struct.cryptocop_private*, %struct.cryptocop_private** %10, align 8
  %75 = getelementptr inbounds %struct.cryptocop_private, %struct.cryptocop_private* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @cryptocop_free_session(i64 %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i32, i32* @EFAULT, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %92

83:                                               ; preds = %73
  br label %91

84:                                               ; preds = %55
  %85 = getelementptr inbounds %struct.strcop_session_op, %struct.strcop_session_op* %13, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %86)
  %88 = call i32 @DEBUG_API(i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %92

91:                                               ; preds = %83
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %91, %84, %80, %34, %26
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @DEBUG(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @access_ok(i32, %struct.strcop_session_op*, i32) #1

declare dso_local i32 @copy_from_user(%struct.strcop_session_op*, %struct.strcop_session_op*, i32) #1

declare dso_local i32 @cryptocop_free_session(i64) #1

declare dso_local i32 @DEBUG_API(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
