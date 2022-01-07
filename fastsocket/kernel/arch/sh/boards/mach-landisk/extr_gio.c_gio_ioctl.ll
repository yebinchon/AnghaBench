; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-landisk/extr_gio.c_gio_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-landisk/extr_gio.c_gio_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@gio_ioctl.addr = internal global i32 0, align 4
@EFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @gio_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gio_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = and i32 %9, 1
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = inttoptr i64 %13 to i32*
  %15 = call i64 @copy_from_user(i32* %8, i32* %14, i32 4)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i64, i64* @EFAULT, align 8
  %19 = sub nsw i64 0, %18
  store i64 %19, i64* %4, align 8
  br label %95

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20, %3
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %78 [
    i32 128, label %23
    i32 131, label %25
    i32 130, label %31
    i32 129, label %44
    i32 134, label %55
    i32 133, label %58
    i32 132, label %68
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* @gio_ioctl.addr, align 4
  br label %81

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4
  %27 = and i32 255, %26
  %28 = trunc i32 %27 to i8
  %29 = load i32, i32* @gio_ioctl.addr, align 4
  %30 = call i32 @ctrl_outb(i8 zeroext %28, i32 %29)
  br label %81

31:                                               ; preds = %21
  %32 = load i32, i32* @gio_ioctl.addr, align 4
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i64, i64* @EFAULT, align 8
  %37 = sub nsw i64 0, %36
  store i64 %37, i64* %4, align 8
  br label %95

38:                                               ; preds = %31
  %39 = load i32, i32* %8, align 4
  %40 = and i32 65535, %39
  %41 = trunc i32 %40 to i16
  %42 = load i32, i32* @gio_ioctl.addr, align 4
  %43 = call i32 @ctrl_outw(i16 zeroext %41, i32 %42)
  br label %81

44:                                               ; preds = %21
  %45 = load i32, i32* @gio_ioctl.addr, align 4
  %46 = and i32 %45, 3
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i64, i64* @EFAULT, align 8
  %50 = sub nsw i64 0, %49
  store i64 %50, i64* %4, align 8
  br label %95

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @gio_ioctl.addr, align 4
  %54 = call i32 @ctrl_outl(i32 %52, i32 %53)
  br label %81

55:                                               ; preds = %21
  %56 = load i32, i32* @gio_ioctl.addr, align 4
  %57 = call i32 @ctrl_inb(i32 %56)
  store i32 %57, i32* %8, align 4
  br label %81

58:                                               ; preds = %21
  %59 = load i32, i32* @gio_ioctl.addr, align 4
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i64, i64* @EFAULT, align 8
  %64 = sub nsw i64 0, %63
  store i64 %64, i64* %4, align 8
  br label %95

65:                                               ; preds = %58
  %66 = load i32, i32* @gio_ioctl.addr, align 4
  %67 = call i32 @ctrl_inw(i32 %66)
  store i32 %67, i32* %8, align 4
  br label %81

68:                                               ; preds = %21
  %69 = load i32, i32* @gio_ioctl.addr, align 4
  %70 = and i32 %69, 3
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i64, i64* @EFAULT, align 8
  %74 = sub nsw i64 0, %73
  store i64 %74, i64* %4, align 8
  br label %95

75:                                               ; preds = %68
  %76 = load i32, i32* @gio_ioctl.addr, align 4
  %77 = call i32 @ctrl_inl(i32 %76)
  store i32 %77, i32* %8, align 4
  br label %81

78:                                               ; preds = %21
  %79 = load i64, i64* @EFAULT, align 8
  %80 = sub nsw i64 0, %79
  store i64 %80, i64* %4, align 8
  br label %95

81:                                               ; preds = %75, %65, %55, %51, %38, %25, %23
  %82 = load i32, i32* %6, align 4
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = load i64, i64* %7, align 8
  %87 = inttoptr i64 %86 to i32*
  %88 = call i64 @copy_to_user(i32* %87, i32* %8, i32 4)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i64, i64* @EFAULT, align 8
  %92 = sub nsw i64 0, %91
  store i64 %92, i64* %4, align 8
  br label %95

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93, %81
  store i64 0, i64* %4, align 8
  br label %95

95:                                               ; preds = %94, %90, %78, %72, %62, %48, %35, %17
  %96 = load i64, i64* %4, align 8
  ret i64 %96
}

declare dso_local i64 @copy_from_user(i32*, i32*, i32) #1

declare dso_local i32 @ctrl_outb(i8 zeroext, i32) #1

declare dso_local i32 @ctrl_outw(i16 zeroext, i32) #1

declare dso_local i32 @ctrl_outl(i32, i32) #1

declare dso_local i32 @ctrl_inb(i32) #1

declare dso_local i32 @ctrl_inw(i32) #1

declare dso_local i32 @ctrl_inl(i32) #1

declare dso_local i64 @copy_to_user(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
