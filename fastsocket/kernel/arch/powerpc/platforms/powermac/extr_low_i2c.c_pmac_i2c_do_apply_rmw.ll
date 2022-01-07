; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_low_i2c.c_pmac_i2c_do_apply_rmw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_low_i2c.c_pmac_i2c_do_apply_rmw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmac_i2c_pf_inst = type { i32, i32*, i32* }

@pmac_i2c_quirk_invmask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmac_i2c_pf_inst*, i32, i32*, i32*)* @pmac_i2c_do_apply_rmw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmac_i2c_do_apply_rmw(%struct.pmac_i2c_pf_inst* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.pmac_i2c_pf_inst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.pmac_i2c_pf_inst* %0, %struct.pmac_i2c_pf_inst** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.pmac_i2c_pf_inst*, %struct.pmac_i2c_pf_inst** %5, align 8
  %11 = getelementptr inbounds %struct.pmac_i2c_pf_inst, %struct.pmac_i2c_pf_inst* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @pmac_i2c_quirk_invmask, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %51

16:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %47, %16
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %17
  %22 = load %struct.pmac_i2c_pf_inst*, %struct.pmac_i2c_pf_inst** %5, align 8
  %23 = getelementptr inbounds %struct.pmac_i2c_pf_inst, %struct.pmac_i2c_pf_inst* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %28, %33
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %34, %39
  %41 = load %struct.pmac_i2c_pf_inst*, %struct.pmac_i2c_pf_inst** %5, align 8
  %42 = getelementptr inbounds %struct.pmac_i2c_pf_inst, %struct.pmac_i2c_pf_inst* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %40, i32* %46, align 4
  br label %47

47:                                               ; preds = %21
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %17

50:                                               ; preds = %17
  br label %93

51:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %89, %51
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %92

56:                                               ; preds = %52
  %57 = load %struct.pmac_i2c_pf_inst*, %struct.pmac_i2c_pf_inst** %5, align 8
  %58 = getelementptr inbounds %struct.pmac_i2c_pf_inst, %struct.pmac_i2c_pf_inst* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = xor i32 %68, -1
  %70 = and i32 %63, %69
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %75, %80
  %82 = or i32 %70, %81
  %83 = load %struct.pmac_i2c_pf_inst*, %struct.pmac_i2c_pf_inst** %5, align 8
  %84 = getelementptr inbounds %struct.pmac_i2c_pf_inst, %struct.pmac_i2c_pf_inst* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %82, i32* %88, align 4
  br label %89

89:                                               ; preds = %56
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %52

92:                                               ; preds = %52
  br label %93

93:                                               ; preds = %92, %50
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
