; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_serial167.c_cy_tiocmget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_serial167.c_cy_tiocmget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.cyclades_port* }
%struct.cyclades_port = type { i32 }
%struct.file = type { i32 }

@BASE_ADDR = common dso_local global i64 0, align 8
@CyCAR = common dso_local global i64 0, align 8
@CyMSVR1 = common dso_local global i64 0, align 8
@CyMSVR2 = common dso_local global i64 0, align 8
@CyRTS = common dso_local global i8 0, align 1
@TIOCM_RTS = common dso_local global i32 0, align 4
@CyDTR = common dso_local global i8 0, align 1
@TIOCM_DTR = common dso_local global i32 0, align 4
@CyDCD = common dso_local global i8 0, align 1
@TIOCM_CAR = common dso_local global i32 0, align 4
@CyDSR = common dso_local global i8 0, align 1
@TIOCM_DSR = common dso_local global i32 0, align 4
@CyCTS = common dso_local global i8 0, align 1
@TIOCM_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @cy_tiocmget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cy_tiocmget(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.cyclades_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 0
  %12 = load %struct.cyclades_port*, %struct.cyclades_port** %11, align 8
  store %struct.cyclades_port* %12, %struct.cyclades_port** %5, align 8
  %13 = load i64, i64* @BASE_ADDR, align 8
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %7, align 8
  %15 = load %struct.cyclades_port*, %struct.cyclades_port** %5, align 8
  %16 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @local_irq_save(i64 %18)
  %20 = load i32, i32* %6, align 4
  %21 = trunc i32 %20 to i8
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* @CyCAR, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store volatile i8 %21, i8* %24, align 1
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* @CyMSVR1, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load volatile i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* @CyMSVR2, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load volatile i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %29, %34
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %9, align 1
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @local_irq_restore(i64 %37)
  %39 = load i8, i8* %9, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* @CyRTS, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %2
  %46 = load i32, i32* @TIOCM_RTS, align 4
  br label %48

47:                                               ; preds = %2
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i32 [ %46, %45 ], [ 0, %47 ]
  %50 = load i8, i8* %9, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @CyDTR, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @TIOCM_DTR, align 4
  br label %59

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 0, %58 ]
  %61 = or i32 %49, %60
  %62 = load i8, i8* %9, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8, i8* @CyDCD, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i32, i32* @TIOCM_CAR, align 4
  br label %71

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i32 [ %69, %68 ], [ 0, %70 ]
  %73 = or i32 %61, %72
  %74 = load i8, i8* %9, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8, i8* @CyDSR, align 1
  %77 = zext i8 %76 to i32
  %78 = and i32 %75, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32, i32* @TIOCM_DSR, align 4
  br label %83

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i32 [ %81, %80 ], [ 0, %82 ]
  %85 = or i32 %73, %84
  %86 = load i8, i8* %9, align 1
  %87 = zext i8 %86 to i32
  %88 = load i8, i8* @CyCTS, align 1
  %89 = zext i8 %88 to i32
  %90 = and i32 %87, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = load i32, i32* @TIOCM_CTS, align 4
  br label %95

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %94, %92
  %96 = phi i32 [ %93, %92 ], [ 0, %94 ]
  %97 = or i32 %85, %96
  ret i32 %97
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
