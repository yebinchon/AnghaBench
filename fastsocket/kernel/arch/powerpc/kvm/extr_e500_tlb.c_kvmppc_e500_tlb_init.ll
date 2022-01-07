; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_tlb.c_kvmppc_e500_tlb_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_tlb.c_kvmppc_e500_tlb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_vcpu_e500 = type { i32*, i32*, %struct.page***, %struct.page***, %struct.page*** }
%struct.page = type { i32 }

@SPRN_TLB1CFG = common dso_local global i32 0, align 4
@tlb1_entry_num = common dso_local global i32 0, align 4
@KVM_E500_TLB0_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KVM_E500_TLB1_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_e500_tlb_init(%struct.kvmppc_vcpu_e500* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvmppc_vcpu_e500*, align 8
  store %struct.kvmppc_vcpu_e500* %0, %struct.kvmppc_vcpu_e500** %3, align 8
  %4 = load i32, i32* @SPRN_TLB1CFG, align 4
  %5 = call i32 @mfspr(i32 %4)
  %6 = and i32 %5, 4095
  store i32 %6, i32* @tlb1_entry_num, align 4
  %7 = load i32, i32* @KVM_E500_TLB0_SIZE, align 4
  %8 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %9 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %7, i32* %11, align 4
  %12 = load i32, i32* @KVM_E500_TLB0_SIZE, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kzalloc(i32 %15, i32 %16)
  %18 = bitcast i8* %17 to %struct.page**
  %19 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %20 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %19, i32 0, i32 2
  %21 = load %struct.page***, %struct.page**** %20, align 8
  %22 = getelementptr inbounds %struct.page**, %struct.page*** %21, i64 0
  store %struct.page** %18, %struct.page*** %22, align 8
  %23 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %24 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %23, i32 0, i32 2
  %25 = load %struct.page***, %struct.page**** %24, align 8
  %26 = getelementptr inbounds %struct.page**, %struct.page*** %25, i64 0
  %27 = load %struct.page**, %struct.page*** %26, align 8
  %28 = icmp eq %struct.page** %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %176

30:                                               ; preds = %1
  %31 = load i32, i32* @KVM_E500_TLB0_SIZE, align 4
  %32 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %33 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* @KVM_E500_TLB0_SIZE, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 4, %37
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @kzalloc(i32 %39, i32 %40)
  %42 = bitcast i8* %41 to %struct.page**
  %43 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %44 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %43, i32 0, i32 3
  %45 = load %struct.page***, %struct.page**** %44, align 8
  %46 = getelementptr inbounds %struct.page**, %struct.page*** %45, i64 0
  store %struct.page** %42, %struct.page*** %46, align 8
  %47 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %48 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %47, i32 0, i32 3
  %49 = load %struct.page***, %struct.page**** %48, align 8
  %50 = getelementptr inbounds %struct.page**, %struct.page*** %49, i64 0
  %51 = load %struct.page**, %struct.page*** %50, align 8
  %52 = icmp eq %struct.page** %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %30
  br label %169

54:                                               ; preds = %30
  %55 = load i32, i32* @KVM_E500_TLB1_SIZE, align 4
  %56 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %57 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* @KVM_E500_TLB1_SIZE, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 4, %61
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i8* @kzalloc(i32 %63, i32 %64)
  %66 = bitcast i8* %65 to %struct.page**
  %67 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %68 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %67, i32 0, i32 2
  %69 = load %struct.page***, %struct.page**** %68, align 8
  %70 = getelementptr inbounds %struct.page**, %struct.page*** %69, i64 1
  store %struct.page** %66, %struct.page*** %70, align 8
  %71 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %72 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %71, i32 0, i32 2
  %73 = load %struct.page***, %struct.page**** %72, align 8
  %74 = getelementptr inbounds %struct.page**, %struct.page*** %73, i64 1
  %75 = load %struct.page**, %struct.page*** %74, align 8
  %76 = icmp eq %struct.page** %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %54
  br label %162

78:                                               ; preds = %54
  %79 = load i32, i32* @tlb1_entry_num, align 4
  %80 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %81 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  store i32 %79, i32* %83, align 4
  %84 = load i32, i32* @tlb1_entry_num, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 4, %85
  %87 = trunc i64 %86 to i32
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = call i8* @kzalloc(i32 %87, i32 %88)
  %90 = bitcast i8* %89 to %struct.page**
  %91 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %92 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %91, i32 0, i32 3
  %93 = load %struct.page***, %struct.page**** %92, align 8
  %94 = getelementptr inbounds %struct.page**, %struct.page*** %93, i64 1
  store %struct.page** %90, %struct.page*** %94, align 8
  %95 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %96 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %95, i32 0, i32 3
  %97 = load %struct.page***, %struct.page**** %96, align 8
  %98 = getelementptr inbounds %struct.page**, %struct.page*** %97, i64 1
  %99 = load %struct.page**, %struct.page*** %98, align 8
  %100 = icmp eq %struct.page** %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %78
  br label %155

102:                                              ; preds = %78
  %103 = load i32, i32* @KVM_E500_TLB0_SIZE, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 8, %104
  %106 = trunc i64 %105 to i32
  %107 = load i32, i32* @GFP_KERNEL, align 4
  %108 = call i8* @kzalloc(i32 %106, i32 %107)
  %109 = bitcast i8* %108 to %struct.page**
  %110 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %111 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %110, i32 0, i32 4
  %112 = load %struct.page***, %struct.page**** %111, align 8
  %113 = getelementptr inbounds %struct.page**, %struct.page*** %112, i64 0
  store %struct.page** %109, %struct.page*** %113, align 8
  %114 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %115 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %114, i32 0, i32 4
  %116 = load %struct.page***, %struct.page**** %115, align 8
  %117 = getelementptr inbounds %struct.page**, %struct.page*** %116, i64 0
  %118 = load %struct.page**, %struct.page*** %117, align 8
  %119 = icmp eq %struct.page** %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %102
  br label %148

121:                                              ; preds = %102
  %122 = load i32, i32* @tlb1_entry_num, align 4
  %123 = sext i32 %122 to i64
  %124 = mul i64 8, %123
  %125 = trunc i64 %124 to i32
  %126 = load i32, i32* @GFP_KERNEL, align 4
  %127 = call i8* @kzalloc(i32 %125, i32 %126)
  %128 = bitcast i8* %127 to %struct.page**
  %129 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %130 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %129, i32 0, i32 4
  %131 = load %struct.page***, %struct.page**** %130, align 8
  %132 = getelementptr inbounds %struct.page**, %struct.page*** %131, i64 1
  store %struct.page** %128, %struct.page*** %132, align 8
  %133 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %134 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %133, i32 0, i32 4
  %135 = load %struct.page***, %struct.page**** %134, align 8
  %136 = getelementptr inbounds %struct.page**, %struct.page*** %135, i64 1
  %137 = load %struct.page**, %struct.page*** %136, align 8
  %138 = icmp eq %struct.page** %137, null
  br i1 %138, label %139, label %140

139:                                              ; preds = %121
  br label %141

140:                                              ; preds = %121
  store i32 0, i32* %2, align 4
  br label %177

141:                                              ; preds = %139
  %142 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %143 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %142, i32 0, i32 4
  %144 = load %struct.page***, %struct.page**** %143, align 8
  %145 = getelementptr inbounds %struct.page**, %struct.page*** %144, i64 0
  %146 = load %struct.page**, %struct.page*** %145, align 8
  %147 = call i32 @kfree(%struct.page** %146)
  br label %148

148:                                              ; preds = %141, %120
  %149 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %150 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %149, i32 0, i32 3
  %151 = load %struct.page***, %struct.page**** %150, align 8
  %152 = getelementptr inbounds %struct.page**, %struct.page*** %151, i64 1
  %153 = load %struct.page**, %struct.page*** %152, align 8
  %154 = call i32 @kfree(%struct.page** %153)
  br label %155

155:                                              ; preds = %148, %101
  %156 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %157 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %156, i32 0, i32 2
  %158 = load %struct.page***, %struct.page**** %157, align 8
  %159 = getelementptr inbounds %struct.page**, %struct.page*** %158, i64 1
  %160 = load %struct.page**, %struct.page*** %159, align 8
  %161 = call i32 @kfree(%struct.page** %160)
  br label %162

162:                                              ; preds = %155, %77
  %163 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %164 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %163, i32 0, i32 3
  %165 = load %struct.page***, %struct.page**** %164, align 8
  %166 = getelementptr inbounds %struct.page**, %struct.page*** %165, i64 0
  %167 = load %struct.page**, %struct.page*** %166, align 8
  %168 = call i32 @kfree(%struct.page** %167)
  br label %169

169:                                              ; preds = %162, %53
  %170 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %171 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %170, i32 0, i32 2
  %172 = load %struct.page***, %struct.page**** %171, align 8
  %173 = getelementptr inbounds %struct.page**, %struct.page*** %172, i64 0
  %174 = load %struct.page**, %struct.page*** %173, align 8
  %175 = call i32 @kfree(%struct.page** %174)
  br label %176

176:                                              ; preds = %169, %29
  store i32 -1, i32* %2, align 4
  br label %177

177:                                              ; preds = %176, %140
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local i32 @mfspr(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
