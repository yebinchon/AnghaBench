; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_44x_emulate.c_kvmppc_core_emulate_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_44x_emulate.c_kvmppc_core_emulate_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_run = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32*, i32 }

@EMULATE_DONE = common dso_local global i32 0, align 4
@DCR_EXITS = common dso_local global i32 0, align 4
@EMULATE_DO_DCR = common dso_local global i32 0, align 4
@EMULATE_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_core_emulate_op(%struct.kvm_run* %0, %struct.kvm_vcpu* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.kvm_run*, align 8
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.kvm_run* %0, %struct.kvm_run** %5, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %17 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @get_op(i32 %18)
  switch i32 %19, label %156 [
    i32 31, label %20
  ]

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @get_xop(i32 %21)
  switch i32 %22, label %153 [
    i32 131, label %23
    i32 130, label %80
    i32 128, label %125
    i32 129, label %137
    i32 132, label %152
  ]

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @get_dcrn(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @get_rt(i32 %26)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %10, align 4
  switch i32 %28, label %57 [
    i32 134, label %29
    i32 133, label %41
  ]

29:                                               ; preds = %23
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %35 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %33, i32* %40, align 4
  br label %79

41:                                               ; preds = %23
  %42 = call i32 (...) @local_irq_disable()
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %44 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @mtdcr(i32 134, i32 %46)
  %48 = call i32 @mfdcr(i32 133)
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %50 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %48, i32* %55, align 4
  %56 = call i32 (...) @local_irq_enable()
  br label %79

57:                                               ; preds = %23
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %60 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %63 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  store i32 0, i32* %64, align 4
  %65 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %66 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %70 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %73 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %76 = load i32, i32* @DCR_EXITS, align 4
  %77 = call i32 @kvmppc_account_exit(%struct.kvm_vcpu* %75, i32 %76)
  %78 = load i32, i32* @EMULATE_DO_DCR, align 4
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %57, %41, %29
  br label %155

80:                                               ; preds = %20
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @get_dcrn(i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @get_rs(i32 %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %10, align 4
  switch i32 %85, label %98 [
    i32 134, label %86
  ]

86:                                               ; preds = %80
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %88 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %96 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  store i32 %94, i32* %97, align 8
  br label %124

98:                                               ; preds = %80
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %101 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 4
  %103 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %104 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %112 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  store i32 %110, i32* %113, align 4
  %114 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %115 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  store i32 1, i32* %116, align 4
  %117 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %118 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  store i32 1, i32* %119, align 4
  %120 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %121 = load i32, i32* @DCR_EXITS, align 4
  %122 = call i32 @kvmppc_account_exit(%struct.kvm_vcpu* %120, i32 %121)
  %123 = load i32, i32* @EMULATE_DO_DCR, align 4
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %98, %86
  br label %155

125:                                              ; preds = %20
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @get_ra(i32 %126)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @get_rs(i32 %128)
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @get_ws(i32 %130)
  store i32 %131, i32* %16, align 4
  %132 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %16, align 4
  %136 = call i32 @kvmppc_44x_emul_tlbwe(%struct.kvm_vcpu* %132, i32 %133, i32 %134, i32 %135)
  store i32 %136, i32* %9, align 4
  br label %155

137:                                              ; preds = %20
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @get_rt(i32 %138)
  store i32 %139, i32* %15, align 4
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @get_ra(i32 %140)
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @get_rb(i32 %142)
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @get_rc(i32 %144)
  store i32 %145, i32* %13, align 4
  %146 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %13, align 4
  %151 = call i32 @kvmppc_44x_emul_tlbsx(%struct.kvm_vcpu* %146, i32 %147, i32 %148, i32 %149, i32 %150)
  store i32 %151, i32* %9, align 4
  br label %155

152:                                              ; preds = %20
  br label %155

153:                                              ; preds = %20
  %154 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %154, i32* %9, align 4
  br label %155

155:                                              ; preds = %153, %152, %137, %125, %124, %79
  br label %158

156:                                              ; preds = %4
  %157 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %157, i32* %9, align 4
  br label %158

158:                                              ; preds = %156, %155
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* @EMULATE_FAIL, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %158
  %163 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %164 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %165 = load i32, i32* %7, align 4
  %166 = load i32*, i32** %8, align 8
  %167 = call i32 @kvmppc_booke_emulate_op(%struct.kvm_run* %163, %struct.kvm_vcpu* %164, i32 %165, i32* %166)
  store i32 %167, i32* %9, align 4
  br label %168

168:                                              ; preds = %162, %158
  %169 = load i32, i32* %9, align 4
  ret i32 %169
}

declare dso_local i32 @get_op(i32) #1

declare dso_local i32 @get_xop(i32) #1

declare dso_local i32 @get_dcrn(i32) #1

declare dso_local i32 @get_rt(i32) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @mtdcr(i32, i32) #1

declare dso_local i32 @mfdcr(i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @kvmppc_account_exit(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @get_rs(i32) #1

declare dso_local i32 @get_ra(i32) #1

declare dso_local i32 @get_ws(i32) #1

declare dso_local i32 @kvmppc_44x_emul_tlbwe(%struct.kvm_vcpu*, i32, i32, i32) #1

declare dso_local i32 @get_rb(i32) #1

declare dso_local i32 @get_rc(i32) #1

declare dso_local i32 @kvmppc_44x_emul_tlbsx(%struct.kvm_vcpu*, i32, i32, i32, i32) #1

declare dso_local i32 @kvmppc_booke_emulate_op(%struct.kvm_run*, %struct.kvm_vcpu*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
