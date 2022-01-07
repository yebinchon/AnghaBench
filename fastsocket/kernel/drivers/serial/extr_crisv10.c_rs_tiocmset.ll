; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_rs_tiocmset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_rs_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64 }
%struct.file = type { i32 }
%struct.e100_serial = type { i32 }

@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_RI = common dso_local global i32 0, align 4
@TIOCM_CD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*, i32, i32)* @rs_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_tiocmset(%struct.tty_struct* %0, %struct.file* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.e100_serial*, align 8
  %10 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.e100_serial*
  store %struct.e100_serial* %14, %struct.e100_serial** %9, align 8
  %15 = load i64, i64* %10, align 8
  %16 = call i32 @local_irq_save(i64 %15)
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @TIOCM_RTS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load %struct.e100_serial*, %struct.e100_serial** %9, align 8
  %23 = call i32 @e100_rts(%struct.e100_serial* %22, i32 0)
  br label %24

24:                                               ; preds = %21, %4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @TIOCM_DTR, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.e100_serial*, %struct.e100_serial** %9, align 8
  %31 = call i32 @e100_dtr(%struct.e100_serial* %30, i32 0)
  br label %32

32:                                               ; preds = %29, %24
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @TIOCM_RI, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.e100_serial*, %struct.e100_serial** %9, align 8
  %39 = call i32 @e100_ri_out(%struct.e100_serial* %38, i32 0)
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @TIOCM_CD, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.e100_serial*, %struct.e100_serial** %9, align 8
  %47 = call i32 @e100_cd_out(%struct.e100_serial* %46, i32 0)
  br label %48

48:                                               ; preds = %45, %40
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @TIOCM_RTS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.e100_serial*, %struct.e100_serial** %9, align 8
  %55 = call i32 @e100_rts(%struct.e100_serial* %54, i32 1)
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @TIOCM_DTR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.e100_serial*, %struct.e100_serial** %9, align 8
  %63 = call i32 @e100_dtr(%struct.e100_serial* %62, i32 1)
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @TIOCM_RI, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.e100_serial*, %struct.e100_serial** %9, align 8
  %71 = call i32 @e100_ri_out(%struct.e100_serial* %70, i32 1)
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @TIOCM_CD, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.e100_serial*, %struct.e100_serial** %9, align 8
  %79 = call i32 @e100_cd_out(%struct.e100_serial* %78, i32 1)
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i64, i64* %10, align 8
  %82 = call i32 @local_irq_restore(i64 %81)
  ret i32 0
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @e100_rts(%struct.e100_serial*, i32) #1

declare dso_local i32 @e100_dtr(%struct.e100_serial*, i32) #1

declare dso_local i32 @e100_ri_out(%struct.e100_serial*, i32) #1

declare dso_local i32 @e100_cd_out(%struct.e100_serial*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
