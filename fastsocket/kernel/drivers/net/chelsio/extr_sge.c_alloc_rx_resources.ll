; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_alloc_rx_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_alloc_rx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge = type { i64, %struct.TYPE_4__, %struct.freelQ*, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i8*, i32, i64 }
%struct.freelQ = type { i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.TYPE_3__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.sge_params = type { i32* }

@SGE_FREELQ_N = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SGE_RX_SM_BUF_SIZE = common dso_local global i32 0, align 4
@SGE_RESPQ_E_N = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sge*, %struct.sge_params*)* @alloc_rx_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_rx_resources(%struct.sge* %0, %struct.sge_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sge*, align 8
  %5 = alloca %struct.sge_params*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.freelQ*, align 8
  store %struct.sge* %0, %struct.sge** %4, align 8
  store %struct.sge_params* %1, %struct.sge_params** %5, align 8
  %10 = load %struct.sge*, %struct.sge** %4, align 8
  %11 = getelementptr inbounds %struct.sge, %struct.sge* %10, i32 0, i32 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %6, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %84, %2
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @SGE_FREELQ_N, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %87

19:                                               ; preds = %15
  %20 = load %struct.sge*, %struct.sge** %4, align 8
  %21 = getelementptr inbounds %struct.sge, %struct.sge* %20, i32 0, i32 2
  %22 = load %struct.freelQ*, %struct.freelQ** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %22, i64 %24
  store %struct.freelQ* %25, %struct.freelQ** %9, align 8
  %26 = load %struct.freelQ*, %struct.freelQ** %9, align 8
  %27 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.sge_params*, %struct.sge_params** %5, align 8
  %29 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.freelQ*, %struct.freelQ** %9, align 8
  %36 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.sge*, %struct.sge** %4, align 8
  %38 = getelementptr inbounds %struct.sge, %struct.sge* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %19
  br label %44

42:                                               ; preds = %19
  %43 = load i32, i32* @NET_IP_ALIGN, align 4
  br label %44

44:                                               ; preds = %42, %41
  %45 = phi i32 [ 0, %41 ], [ %43, %42 ]
  %46 = load %struct.freelQ*, %struct.freelQ** %9, align 8
  %47 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.freelQ*, %struct.freelQ** %9, align 8
  %49 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 4, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %7, align 4
  %54 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.freelQ*, %struct.freelQ** %9, align 8
  %57 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %56, i32 0, i32 7
  %58 = call i8* @pci_alloc_consistent(%struct.pci_dev* %54, i32 %55, i32* %57)
  %59 = load %struct.freelQ*, %struct.freelQ** %9, align 8
  %60 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %59, i32 0, i32 6
  store i8* %58, i8** %60, align 8
  %61 = load %struct.freelQ*, %struct.freelQ** %9, align 8
  %62 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %61, i32 0, i32 6
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %44
  br label %183

66:                                               ; preds = %44
  %67 = load %struct.freelQ*, %struct.freelQ** %9, align 8
  %68 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 4, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i32 @kzalloc(i32 %73, i32 %74)
  %76 = load %struct.freelQ*, %struct.freelQ** %9, align 8
  %77 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  %78 = load %struct.freelQ*, %struct.freelQ** %9, align 8
  %79 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %66
  br label %183

83:                                               ; preds = %66
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %8, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %15

87:                                               ; preds = %15
  %88 = load i32, i32* @SGE_RX_SM_BUF_SIZE, align 4
  %89 = zext i32 %88 to i64
  %90 = add i64 %89, 4
  %91 = load %struct.sge*, %struct.sge** %4, align 8
  %92 = getelementptr inbounds %struct.sge, %struct.sge* %91, i32 0, i32 2
  %93 = load %struct.freelQ*, %struct.freelQ** %92, align 8
  %94 = load %struct.sge*, %struct.sge** %4, align 8
  %95 = getelementptr inbounds %struct.sge, %struct.sge* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %93, i64 %100
  %102 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = zext i32 %103 to i64
  %105 = add i64 %90, %104
  %106 = trunc i64 %105 to i32
  %107 = load %struct.sge*, %struct.sge** %4, align 8
  %108 = getelementptr inbounds %struct.sge, %struct.sge* %107, i32 0, i32 2
  %109 = load %struct.freelQ*, %struct.freelQ** %108, align 8
  %110 = load %struct.sge*, %struct.sge** %4, align 8
  %111 = getelementptr inbounds %struct.sge, %struct.sge* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %109, i64 %116
  %118 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %117, i32 0, i32 3
  store i32 %106, i32* %118, align 4
  %119 = call i32 @SKB_DATA_ALIGN(i32 4)
  %120 = sub nsw i32 16384, %119
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.sge*, %struct.sge** %4, align 8
  %123 = getelementptr inbounds %struct.sge, %struct.sge* %122, i32 0, i32 2
  %124 = load %struct.freelQ*, %struct.freelQ** %123, align 8
  %125 = load %struct.sge*, %struct.sge** %4, align 8
  %126 = getelementptr inbounds %struct.sge, %struct.sge* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %124, i64 %127
  %129 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %128, i32 0, i32 3
  store i32 %121, i32* %129, align 4
  %130 = load %struct.sge*, %struct.sge** %4, align 8
  %131 = getelementptr inbounds %struct.sge, %struct.sge* %130, i32 0, i32 2
  %132 = load %struct.freelQ*, %struct.freelQ** %131, align 8
  %133 = load %struct.sge*, %struct.sge** %4, align 8
  %134 = getelementptr inbounds %struct.sge, %struct.sge* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %132, i64 %139
  %141 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %140, i32 0, i32 4
  store i32 0, i32* %141, align 8
  %142 = load %struct.sge*, %struct.sge** %4, align 8
  %143 = getelementptr inbounds %struct.sge, %struct.sge* %142, i32 0, i32 2
  %144 = load %struct.freelQ*, %struct.freelQ** %143, align 8
  %145 = load %struct.sge*, %struct.sge** %4, align 8
  %146 = getelementptr inbounds %struct.sge, %struct.sge* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %144, i64 %147
  %149 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %148, i32 0, i32 4
  store i32 1, i32* %149, align 8
  %150 = load %struct.sge*, %struct.sge** %4, align 8
  %151 = getelementptr inbounds %struct.sge, %struct.sge* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  store i32 1, i32* %152, align 8
  %153 = load i32, i32* @SGE_RESPQ_E_N, align 4
  %154 = load %struct.sge*, %struct.sge** %4, align 8
  %155 = getelementptr inbounds %struct.sge, %struct.sge* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  store i32 %153, i32* %156, align 4
  %157 = load %struct.sge*, %struct.sge** %4, align 8
  %158 = getelementptr inbounds %struct.sge, %struct.sge* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 4
  store i64 0, i64* %159, align 8
  %160 = load %struct.sge*, %struct.sge** %4, align 8
  %161 = getelementptr inbounds %struct.sge, %struct.sge* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = mul i64 4, %164
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %7, align 4
  %167 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %168 = load i32, i32* %7, align 4
  %169 = load %struct.sge*, %struct.sge** %4, align 8
  %170 = getelementptr inbounds %struct.sge, %struct.sge* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 3
  %172 = call i8* @pci_alloc_consistent(%struct.pci_dev* %167, i32 %168, i32* %171)
  %173 = load %struct.sge*, %struct.sge** %4, align 8
  %174 = getelementptr inbounds %struct.sge, %struct.sge* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 2
  store i8* %172, i8** %175, align 8
  %176 = load %struct.sge*, %struct.sge** %4, align 8
  %177 = getelementptr inbounds %struct.sge, %struct.sge* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 2
  %179 = load i8*, i8** %178, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %182, label %181

181:                                              ; preds = %87
  br label %183

182:                                              ; preds = %87
  store i32 0, i32* %3, align 4
  br label %188

183:                                              ; preds = %181, %82, %65
  %184 = load %struct.sge*, %struct.sge** %4, align 8
  %185 = call i32 @free_rx_resources(%struct.sge* %184)
  %186 = load i32, i32* @ENOMEM, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %3, align 4
  br label %188

188:                                              ; preds = %183, %182
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i8* @pci_alloc_consistent(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @SKB_DATA_ALIGN(i32) #1

declare dso_local i32 @free_rx_resources(%struct.sge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
