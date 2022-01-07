; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_free_dma_rcv_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_free_dma_rcv_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_rcv_ctx = type { i32, %struct.ti_ohci*, i64*, i64*, i64*, i32, i64*, i64*, i32, i32 }
%struct.ti_ohci = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Freeing dma_rcv_ctx %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_rcv_ctx*)* @free_dma_rcv_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_dma_rcv_ctx(%struct.dma_rcv_ctx* %0) #0 {
  %2 = alloca %struct.dma_rcv_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_ohci*, align 8
  store %struct.dma_rcv_ctx* %0, %struct.dma_rcv_ctx** %2, align 8
  %5 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %5, i32 0, i32 1
  %7 = load %struct.ti_ohci*, %struct.ti_ohci** %6, align 8
  store %struct.ti_ohci* %7, %struct.ti_ohci** %4, align 8
  %8 = load %struct.ti_ohci*, %struct.ti_ohci** %4, align 8
  %9 = icmp eq %struct.ti_ohci* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %153

11:                                               ; preds = %1
  %12 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @DBGMSG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %16, i32 0, i32 7
  %18 = load i64*, i64** %17, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %20, label %80

20:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %68, %20
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %2, align 8
  %24 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %71

27:                                               ; preds = %21
  %28 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %2, align 8
  %29 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %28, i32 0, i32 7
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %27
  %37 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %2, align 8
  %38 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %37, i32 0, i32 6
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %36
  %46 = load %struct.ti_ohci*, %struct.ti_ohci** %4, align 8
  %47 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %2, align 8
  %50 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %2, align 8
  %53 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %52, i32 0, i32 7
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %2, align 8
  %60 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %59, i32 0, i32 6
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @pci_free_consistent(i32 %48, i32 %51, i64 %58, i64 %65)
  br label %67

67:                                               ; preds = %45, %36, %27
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %21

71:                                               ; preds = %21
  %72 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %2, align 8
  %73 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %72, i32 0, i32 7
  %74 = load i64*, i64** %73, align 8
  %75 = call i32 @kfree(i64* %74)
  %76 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %2, align 8
  %77 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %76, i32 0, i32 6
  %78 = load i64*, i64** %77, align 8
  %79 = call i32 @kfree(i64* %78)
  br label %80

80:                                               ; preds = %71, %11
  %81 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %2, align 8
  %82 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %81, i32 0, i32 4
  %83 = load i64*, i64** %82, align 8
  %84 = icmp ne i64* %83, null
  br i1 %84, label %85, label %146

85:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %130, %85
  %87 = load i32, i32* %3, align 4
  %88 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %2, align 8
  %89 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %133

92:                                               ; preds = %86
  %93 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %2, align 8
  %94 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %93, i32 0, i32 4
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %129

101:                                              ; preds = %92
  %102 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %2, align 8
  %103 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %102, i32 0, i32 3
  %104 = load i64*, i64** %103, align 8
  %105 = load i32, i32* %3, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %129

110:                                              ; preds = %101
  %111 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %2, align 8
  %112 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %2, align 8
  %115 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %114, i32 0, i32 4
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %3, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %2, align 8
  %122 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %121, i32 0, i32 3
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* %3, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @pci_pool_free(i32 %113, i64 %120, i64 %127)
  br label %129

129:                                              ; preds = %110, %101, %92
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %3, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %3, align 4
  br label %86

133:                                              ; preds = %86
  %134 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %2, align 8
  %135 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @pci_pool_destroy(i32 %136)
  %138 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %2, align 8
  %139 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %138, i32 0, i32 4
  %140 = load i64*, i64** %139, align 8
  %141 = call i32 @kfree(i64* %140)
  %142 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %2, align 8
  %143 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %142, i32 0, i32 3
  %144 = load i64*, i64** %143, align 8
  %145 = call i32 @kfree(i64* %144)
  br label %146

146:                                              ; preds = %133, %80
  %147 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %2, align 8
  %148 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %147, i32 0, i32 2
  %149 = load i64*, i64** %148, align 8
  %150 = call i32 @kfree(i64* %149)
  %151 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %2, align 8
  %152 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %151, i32 0, i32 1
  store %struct.ti_ohci* null, %struct.ti_ohci** %152, align 8
  br label %153

153:                                              ; preds = %146, %10
  ret void
}

declare dso_local i32 @DBGMSG(i8*, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i64, i64) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @pci_pool_free(i32, i64, i64) #1

declare dso_local i32 @pci_pool_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
