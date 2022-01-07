; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_arv.c_iic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_arv.c_iic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLDI2CDATA = common dso_local global i32 0, align 4
@PLDI2CCND = common dso_local global i32 0, align 4
@PLDI2CSTEN_STEN = common dso_local global i32 0, align 4
@PLDI2CSTEN = common dso_local global i32 0, align 4
@PLDI2CSTS = common dso_local global i32 0, align 4
@PLDI2CSTS_BB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iic(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i64, i64* %7, align 8
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @PLDI2CDATA, align 4
  %15 = call i32 @ar_outl(i32 %13, i32 %14)
  %16 = call i32 (...) @wait_for_vsync()
  %17 = load i32, i32* @PLDI2CCND, align 4
  %18 = call i32 @ar_outl(i32 1, i32 %17)
  %19 = call i32 (...) @wait_acknowledge()
  %20 = load i64, i64* %8, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @PLDI2CDATA, align 4
  %23 = call i32 @ar_outl(i32 %21, i32 %22)
  %24 = call i32 (...) @wait_for_vsync()
  %25 = load i32, i32* @PLDI2CSTEN_STEN, align 4
  %26 = load i32, i32* @PLDI2CSTEN, align 4
  %27 = call i32 @ar_outl(i32 %25, i32 %26)
  %28 = call i32 (...) @wait_acknowledge()
  %29 = load i64, i64* %9, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @PLDI2CDATA, align 4
  %32 = call i32 @ar_outl(i32 %30, i32 %31)
  %33 = call i32 (...) @wait_for_vsync()
  %34 = load i32, i32* @PLDI2CSTEN_STEN, align 4
  %35 = load i32, i32* @PLDI2CSTEN, align 4
  %36 = call i32 @ar_outl(i32 %34, i32 %35)
  %37 = call i32 (...) @wait_acknowledge()
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %40, label %50

40:                                               ; preds = %5
  %41 = load i64, i64* %10, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @PLDI2CDATA, align 4
  %44 = call i32 @ar_outl(i32 %42, i32 %43)
  %45 = call i32 (...) @wait_for_vsync()
  %46 = load i32, i32* @PLDI2CSTEN_STEN, align 4
  %47 = load i32, i32* @PLDI2CSTEN, align 4
  %48 = call i32 @ar_outl(i32 %46, i32 %47)
  %49 = call i32 (...) @wait_acknowledge()
  br label %50

50:                                               ; preds = %40, %5
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %56, %50
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 100
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = call i32 (...) @cpu_relax()
  br label %56

56:                                               ; preds = %54
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %51

59:                                               ; preds = %51
  %60 = load i32, i32* @PLDI2CCND, align 4
  %61 = call i32 @ar_outl(i32 2, i32 %60)
  %62 = load i32, i32* @PLDI2CCND, align 4
  %63 = call i32 @ar_outl(i32 2, i32 %62)
  br label %64

64:                                               ; preds = %70, %59
  %65 = load i32, i32* @PLDI2CSTS, align 4
  %66 = call i32 @ar_inl(i32 %65)
  %67 = load i32, i32* @PLDI2CSTS_BB, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = call i32 (...) @cpu_relax()
  br label %64

72:                                               ; preds = %64
  ret void
}

declare dso_local i32 @ar_outl(i32, i32) #1

declare dso_local i32 @wait_for_vsync(...) #1

declare dso_local i32 @wait_acknowledge(...) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @ar_inl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
