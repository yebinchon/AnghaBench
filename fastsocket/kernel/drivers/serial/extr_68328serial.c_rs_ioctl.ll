; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68328serial.c_rs_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68328serial.c_rs_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, i64 }
%struct.file = type { i32 }
%struct.m68k_serial = type { i32 }
%struct.serial_struct = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"rs_ioctl\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@TIOCSERCONFIG = common dso_local global i32 0, align 4
@TIOCSERGWILD = common dso_local global i32 0, align 4
@TIOCSERSWILD = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@VERIFY_WRITE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*, i32, i64)* @rs_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_ioctl(%struct.tty_struct* %0, %struct.file* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.m68k_serial*, align 8
  %12 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.m68k_serial*
  store %struct.m68k_serial* %16, %struct.m68k_serial** %11, align 8
  %17 = load %struct.m68k_serial*, %struct.m68k_serial** %11, align 8
  %18 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %19 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @serial_paranoia_check(%struct.m68k_serial* %17, i32 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %147

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 131
  br i1 %28, label %29, label %59

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 128
  br i1 %31, label %32, label %59

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @TIOCSERCONFIG, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @TIOCSERGWILD, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @TIOCSERSWILD, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 129
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %49 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @TTY_IO_ERROR, align 4
  %52 = shl i32 1, %51
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %147

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %44, %40, %36, %32, %29, %26
  %60 = load i32, i32* %8, align 4
  switch i32 %60, label %144 [
    i32 133, label %61
    i32 132, label %77
    i32 131, label %97
    i32 128, label %111
    i32 130, label %116
    i32 129, label %130
  ]

61:                                               ; preds = %59
  %62 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %63 = call i32 @tty_check_change(%struct.tty_struct* %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %5, align 4
  br label %147

68:                                               ; preds = %61
  %69 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %70 = call i32 @tty_wait_until_sent(%struct.tty_struct* %69, i32 0)
  %71 = load i64, i64* %9, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load %struct.m68k_serial*, %struct.m68k_serial** %11, align 8
  %75 = call i32 @send_break(%struct.m68k_serial* %74, i64 250)
  br label %76

76:                                               ; preds = %73, %68
  store i32 0, i32* %5, align 4
  br label %147

77:                                               ; preds = %59
  %78 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %79 = call i32 @tty_check_change(%struct.tty_struct* %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %5, align 4
  br label %147

84:                                               ; preds = %77
  %85 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %86 = call i32 @tty_wait_until_sent(%struct.tty_struct* %85, i32 0)
  %87 = load %struct.m68k_serial*, %struct.m68k_serial** %11, align 8
  %88 = load i64, i64* %9, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i64, i64* %9, align 8
  %92 = mul i64 %91, 100
  br label %94

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93, %90
  %95 = phi i64 [ %92, %90 ], [ 250, %93 ]
  %96 = call i32 @send_break(%struct.m68k_serial* %87, i64 %95)
  store i32 0, i32* %5, align 4
  br label %147

97:                                               ; preds = %59
  %98 = load i32, i32* @VERIFY_WRITE, align 4
  %99 = load i64, i64* %9, align 8
  %100 = inttoptr i64 %99 to i8*
  %101 = call i32 @access_ok(i32 %98, i8* %100, i32 4)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = load %struct.m68k_serial*, %struct.m68k_serial** %11, align 8
  %105 = load i64, i64* %9, align 8
  %106 = inttoptr i64 %105 to %struct.serial_struct*
  %107 = call i32 @get_serial_info(%struct.m68k_serial* %104, %struct.serial_struct* %106)
  store i32 %107, i32* %5, align 4
  br label %147

108:                                              ; preds = %97
  %109 = load i32, i32* @EFAULT, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %5, align 4
  br label %147

111:                                              ; preds = %59
  %112 = load %struct.m68k_serial*, %struct.m68k_serial** %11, align 8
  %113 = load i64, i64* %9, align 8
  %114 = inttoptr i64 %113 to %struct.serial_struct*
  %115 = call i32 @set_serial_info(%struct.m68k_serial* %112, %struct.serial_struct* %114)
  store i32 %115, i32* %5, align 4
  br label %147

116:                                              ; preds = %59
  %117 = load i32, i32* @VERIFY_WRITE, align 4
  %118 = load i64, i64* %9, align 8
  %119 = inttoptr i64 %118 to i8*
  %120 = call i32 @access_ok(i32 %117, i8* %119, i32 4)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %116
  %123 = load %struct.m68k_serial*, %struct.m68k_serial** %11, align 8
  %124 = load i64, i64* %9, align 8
  %125 = inttoptr i64 %124 to i32*
  %126 = call i32 @get_lsr_info(%struct.m68k_serial* %123, i32* %125)
  store i32 %126, i32* %5, align 4
  br label %147

127:                                              ; preds = %116
  %128 = load i32, i32* @EFAULT, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %5, align 4
  br label %147

130:                                              ; preds = %59
  %131 = load i32, i32* @VERIFY_WRITE, align 4
  %132 = load i64, i64* %9, align 8
  %133 = inttoptr i64 %132 to i8*
  %134 = call i32 @access_ok(i32 %131, i8* %133, i32 4)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %130
  %137 = load i32, i32* @EFAULT, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %5, align 4
  br label %147

139:                                              ; preds = %130
  %140 = load i64, i64* %9, align 8
  %141 = inttoptr i64 %140 to %struct.m68k_serial*
  %142 = load %struct.m68k_serial*, %struct.m68k_serial** %11, align 8
  %143 = call i32 @copy_to_user(%struct.m68k_serial* %141, %struct.m68k_serial* %142, i32 4)
  store i32 0, i32* %5, align 4
  br label %147

144:                                              ; preds = %59
  %145 = load i32, i32* @ENOIOCTLCMD, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %144, %139, %136, %127, %122, %111, %108, %103, %94, %82, %76, %66, %55, %23
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i64 @serial_paranoia_check(%struct.m68k_serial*, i32, i8*) #1

declare dso_local i32 @tty_check_change(%struct.tty_struct*) #1

declare dso_local i32 @tty_wait_until_sent(%struct.tty_struct*, i32) #1

declare dso_local i32 @send_break(%struct.m68k_serial*, i64) #1

declare dso_local i32 @access_ok(i32, i8*, i32) #1

declare dso_local i32 @get_serial_info(%struct.m68k_serial*, %struct.serial_struct*) #1

declare dso_local i32 @set_serial_info(%struct.m68k_serial*, %struct.serial_struct*) #1

declare dso_local i32 @get_lsr_info(%struct.m68k_serial*, i32*) #1

declare dso_local i32 @copy_to_user(%struct.m68k_serial*, %struct.m68k_serial*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
