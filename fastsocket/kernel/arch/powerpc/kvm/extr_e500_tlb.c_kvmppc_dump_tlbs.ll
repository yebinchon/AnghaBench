; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_tlb.c_kvmppc_dump_tlbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_tlb.c_kvmppc_dump_tlbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvmppc_vcpu_e500 = type { i32*, i32*, %struct.tlbe**, %struct.tlbe** }
%struct.tlbe = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"| %8s | %8s | %8s | %8s | %8s |\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"nr\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mas1\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mas2\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"mas3\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"mas7\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Guest TLB%d:\0A\00", align 1
@MAS1_VALID = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c" G[%d][%3d] |  %08X | %08X | %08X | %08X |\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Shadow TLB%d:\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c" S[%d][%3d] |  %08X | %08X | %08X | %08X |\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_dump_tlbs(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvmppc_vcpu_e500*, align 8
  %4 = alloca %struct.tlbe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %8 = call %struct.kvmppc_vcpu_e500* @to_e500(%struct.kvm_vcpu* %7)
  store %struct.kvmppc_vcpu_e500* %8, %struct.kvmppc_vcpu_e500** %3, align 8
  %9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %64, %1
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %67

13:                                               ; preds = %10
  %14 = load i32, i32* %6, align 4
  %15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %14)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %60, %13
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %19 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %17, %24
  br i1 %25, label %26, label %63

26:                                               ; preds = %16
  %27 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %28 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %27, i32 0, i32 3
  %29 = load %struct.tlbe**, %struct.tlbe*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.tlbe*, %struct.tlbe** %29, i64 %31
  %33 = load %struct.tlbe*, %struct.tlbe** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.tlbe, %struct.tlbe* %33, i64 %35
  store %struct.tlbe* %36, %struct.tlbe** %4, align 8
  %37 = load %struct.tlbe*, %struct.tlbe** %4, align 8
  %38 = getelementptr inbounds %struct.tlbe, %struct.tlbe* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MAS1_VALID, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %26
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.tlbe*, %struct.tlbe** %4, align 8
  %47 = getelementptr inbounds %struct.tlbe, %struct.tlbe* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.tlbe*, %struct.tlbe** %4, align 8
  %50 = getelementptr inbounds %struct.tlbe, %struct.tlbe* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.tlbe*, %struct.tlbe** %4, align 8
  %53 = getelementptr inbounds %struct.tlbe, %struct.tlbe* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.tlbe*, %struct.tlbe** %4, align 8
  %56 = getelementptr inbounds %struct.tlbe, %struct.tlbe* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 %44, i32 %45, i32 %48, i32 %51, i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %43, %26
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %16

63:                                               ; preds = %16
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %10

67:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %122, %67
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 2
  br i1 %70, label %71, label %125

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %72)
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %118, %71
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %77 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %75, %82
  br i1 %83, label %84, label %121

84:                                               ; preds = %74
  %85 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %86 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %85, i32 0, i32 2
  %87 = load %struct.tlbe**, %struct.tlbe*** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.tlbe*, %struct.tlbe** %87, i64 %89
  %91 = load %struct.tlbe*, %struct.tlbe** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.tlbe, %struct.tlbe* %91, i64 %93
  store %struct.tlbe* %94, %struct.tlbe** %4, align 8
  %95 = load %struct.tlbe*, %struct.tlbe** %4, align 8
  %96 = getelementptr inbounds %struct.tlbe, %struct.tlbe* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @MAS1_VALID, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %84
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.tlbe*, %struct.tlbe** %4, align 8
  %105 = getelementptr inbounds %struct.tlbe, %struct.tlbe* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.tlbe*, %struct.tlbe** %4, align 8
  %108 = getelementptr inbounds %struct.tlbe, %struct.tlbe* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.tlbe*, %struct.tlbe** %4, align 8
  %111 = getelementptr inbounds %struct.tlbe, %struct.tlbe* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.tlbe*, %struct.tlbe** %4, align 8
  %114 = getelementptr inbounds %struct.tlbe, %struct.tlbe* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i32 %102, i32 %103, i32 %106, i32 %109, i32 %112, i32 %115)
  br label %117

117:                                              ; preds = %101, %84
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %74

121:                                              ; preds = %74
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %68

125:                                              ; preds = %68
  ret void
}

declare dso_local %struct.kvmppc_vcpu_e500* @to_e500(%struct.kvm_vcpu*) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
