; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_emulate_popf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_emulate_popf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }
%struct.x86_emulate_ctxt = type { i32, i32, i32 }
%struct.x86_emulate_ops = type { i32 }

@X86_EFLAGS_IOPL = common dso_local global i32 0, align 4
@IOPL_SHIFT = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_2__* null, align 8
@X86EMUL_CONTINUE = common dso_local global i32 0, align 4
@EFLG_CF = common dso_local global i64 0, align 8
@EFLG_PF = common dso_local global i64 0, align 8
@EFLG_AF = common dso_local global i64 0, align 8
@EFLG_ZF = common dso_local global i64 0, align 8
@EFLG_SF = common dso_local global i64 0, align 8
@EFLG_OF = common dso_local global i64 0, align 8
@EFLG_TF = common dso_local global i64 0, align 8
@EFLG_DF = common dso_local global i64 0, align 8
@EFLG_NT = common dso_local global i64 0, align 8
@EFLG_RF = common dso_local global i64 0, align 8
@EFLG_AC = common dso_local global i64 0, align 8
@EFLG_ID = common dso_local global i64 0, align 8
@EFLG_IOPL = common dso_local global i64 0, align 8
@EFLG_IF = common dso_local global i64 0, align 8
@X86EMUL_PROPAGATE_FAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*, %struct.x86_emulate_ops*, i8*, i32)* @emulate_popf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_popf(%struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ops* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.x86_emulate_ctxt*, align 8
  %7 = alloca %struct.x86_emulate_ops*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %6, align 8
  store %struct.x86_emulate_ops* %1, %struct.x86_emulate_ops** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %6, align 8
  %16 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @X86_EFLAGS_IOPL, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @IOPL_SHIFT, align 4
  %21 = ashr i32 %19, %20
  store i32 %21, i32* %13, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (i32)*, i32 (i32)** %23, align 8
  %25 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %6, align 8
  %26 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 %24(i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %6, align 8
  %30 = load %struct.x86_emulate_ops*, %struct.x86_emulate_ops** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @emulate_pop(%struct.x86_emulate_ctxt* %29, %struct.x86_emulate_ops* %30, i64* %11, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @X86EMUL_CONTINUE, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %115

38:                                               ; preds = %4
  %39 = load i64, i64* @EFLG_CF, align 8
  %40 = load i64, i64* @EFLG_PF, align 8
  %41 = or i64 %39, %40
  %42 = load i64, i64* @EFLG_AF, align 8
  %43 = or i64 %41, %42
  %44 = load i64, i64* @EFLG_ZF, align 8
  %45 = or i64 %43, %44
  %46 = load i64, i64* @EFLG_SF, align 8
  %47 = or i64 %45, %46
  %48 = load i64, i64* @EFLG_OF, align 8
  %49 = or i64 %47, %48
  %50 = load i64, i64* @EFLG_TF, align 8
  %51 = or i64 %49, %50
  %52 = load i64, i64* @EFLG_DF, align 8
  %53 = or i64 %51, %52
  %54 = load i64, i64* @EFLG_NT, align 8
  %55 = or i64 %53, %54
  %56 = load i64, i64* @EFLG_RF, align 8
  %57 = or i64 %55, %56
  %58 = load i64, i64* @EFLG_AC, align 8
  %59 = or i64 %57, %58
  %60 = load i64, i64* @EFLG_ID, align 8
  %61 = or i64 %59, %60
  store i64 %61, i64* %12, align 8
  %62 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %6, align 8
  %63 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %94 [
    i32 129, label %65
    i32 130, label %65
    i32 131, label %65
    i32 128, label %81
  ]

65:                                               ; preds = %38, %38, %38
  %66 = load i32, i32* %14, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i64, i64* @EFLG_IOPL, align 8
  %70 = load i64, i64* %12, align 8
  %71 = or i64 %70, %69
  store i64 %71, i64* %12, align 8
  br label %72

72:                                               ; preds = %68, %65
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i64, i64* @EFLG_IF, align 8
  %78 = load i64, i64* %12, align 8
  %79 = or i64 %78, %77
  store i64 %79, i64* %12, align 8
  br label %80

80:                                               ; preds = %76, %72
  br label %100

81:                                               ; preds = %38
  %82 = load i32, i32* %13, align 4
  %83 = icmp slt i32 %82, 3
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %6, align 8
  %86 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @kvm_inject_gp(i32 %87, i32 0)
  %89 = load i32, i32* @X86EMUL_PROPAGATE_FAULT, align 4
  store i32 %89, i32* %5, align 4
  br label %115

90:                                               ; preds = %81
  %91 = load i64, i64* @EFLG_IF, align 8
  %92 = load i64, i64* %12, align 8
  %93 = or i64 %92, %91
  store i64 %93, i64* %12, align 8
  br label %100

94:                                               ; preds = %38
  %95 = load i64, i64* @EFLG_IOPL, align 8
  %96 = load i64, i64* @EFLG_IF, align 8
  %97 = or i64 %95, %96
  %98 = load i64, i64* %12, align 8
  %99 = or i64 %98, %97
  store i64 %99, i64* %12, align 8
  br label %100

100:                                              ; preds = %94, %90, %80
  %101 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %6, align 8
  %102 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* %12, align 8
  %106 = xor i64 %105, -1
  %107 = and i64 %104, %106
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* %12, align 8
  %110 = and i64 %108, %109
  %111 = or i64 %107, %110
  %112 = load i8*, i8** %8, align 8
  %113 = bitcast i8* %112 to i64*
  store i64 %111, i64* %113, align 8
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %100, %84, %36
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @emulate_pop(%struct.x86_emulate_ctxt*, %struct.x86_emulate_ops*, i64*, i32) #1

declare dso_local i32 @kvm_inject_gp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
