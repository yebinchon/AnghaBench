; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_alloc_rx_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_alloc_rx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32 }
%struct.rx_ring = type { i32, i32, i32*, i32*, i32, i32, i32*, i32*, i32, i32, i32*, i32, i32 }

@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"rx_ring alloc failed.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Small buffer queue allocation failed.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Small buffer queue control block allocation failed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Large buffer queue allocation failed.\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"Large buffer queue control block allocation failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*, %struct.rx_ring*)* @ql_alloc_rx_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_alloc_rx_resources(%struct.ql_adapter* %0, %struct.rx_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ql_adapter*, align 8
  %5 = alloca %struct.rx_ring*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %4, align 8
  store %struct.rx_ring* %1, %struct.rx_ring** %5, align 8
  %6 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %7 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %10 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %9, i32 0, i32 12
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %13 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %12, i32 0, i32 11
  %14 = call i8* @pci_alloc_consistent(i32 %8, i32 %11, i32* %13)
  %15 = bitcast i8* %14 to i32*
  %16 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %17 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %16, i32 0, i32 10
  store i32* %15, i32** %17, align 8
  %18 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %19 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %18, i32 0, i32 10
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %24 = load i32, i32* @ifup, align 4
  %25 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %26 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @netif_err(%struct.ql_adapter* %23, i32 %24, i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %150

31:                                               ; preds = %2
  %32 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %33 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %87

36:                                               ; preds = %31
  %37 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %38 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %41 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %44 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %43, i32 0, i32 8
  %45 = call i8* @pci_alloc_consistent(i32 %39, i32 %42, i32* %44)
  %46 = bitcast i8* %45 to i32*
  %47 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %48 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %47, i32 0, i32 7
  store i32* %46, i32** %48, align 8
  %49 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %50 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %49, i32 0, i32 7
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %36
  %54 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %55 = load i32, i32* @ifup, align 4
  %56 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %57 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @netif_err(%struct.ql_adapter* %54, i32 %55, i32 %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %144

60:                                               ; preds = %36
  %61 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %62 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = trunc i64 %65 to i32
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i8* @kmalloc(i32 %66, i32 %67)
  %69 = bitcast i8* %68 to i32*
  %70 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %71 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %70, i32 0, i32 6
  store i32* %69, i32** %71, align 8
  %72 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %73 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %72, i32 0, i32 6
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %60
  %77 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %78 = load i32, i32* @ifup, align 4
  %79 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %80 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @netif_err(%struct.ql_adapter* %77, i32 %78, i32 %81, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %144

83:                                               ; preds = %60
  %84 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %85 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %86 = call i32 @ql_init_sbq_ring(%struct.ql_adapter* %84, %struct.rx_ring* %85)
  br label %87

87:                                               ; preds = %83, %31
  %88 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %89 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %143

92:                                               ; preds = %87
  %93 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %94 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %97 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %100 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %99, i32 0, i32 4
  %101 = call i8* @pci_alloc_consistent(i32 %95, i32 %98, i32* %100)
  %102 = bitcast i8* %101 to i32*
  %103 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %104 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %103, i32 0, i32 3
  store i32* %102, i32** %104, align 8
  %105 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %106 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %116

109:                                              ; preds = %92
  %110 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %111 = load i32, i32* @ifup, align 4
  %112 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %113 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @netif_err(%struct.ql_adapter* %110, i32 %111, i32 %114, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %144

116:                                              ; preds = %92
  %117 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %118 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = mul i64 %120, 4
  %122 = trunc i64 %121 to i32
  %123 = load i32, i32* @GFP_KERNEL, align 4
  %124 = call i8* @kmalloc(i32 %122, i32 %123)
  %125 = bitcast i8* %124 to i32*
  %126 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %127 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %126, i32 0, i32 2
  store i32* %125, i32** %127, align 8
  %128 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %129 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = icmp eq i32* %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %116
  %133 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %134 = load i32, i32* @ifup, align 4
  %135 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %136 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @netif_err(%struct.ql_adapter* %133, i32 %134, i32 %137, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  br label %144

139:                                              ; preds = %116
  %140 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %141 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %142 = call i32 @ql_init_lbq_ring(%struct.ql_adapter* %140, %struct.rx_ring* %141)
  br label %143

143:                                              ; preds = %139, %87
  store i32 0, i32* %3, align 4
  br label %150

144:                                              ; preds = %132, %109, %76, %53
  %145 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %146 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %147 = call i32 @ql_free_rx_resources(%struct.ql_adapter* %145, %struct.rx_ring* %146)
  %148 = load i32, i32* @ENOMEM, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %144, %143, %22
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i8* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @ql_init_sbq_ring(%struct.ql_adapter*, %struct.rx_ring*) #1

declare dso_local i32 @ql_init_lbq_ring(%struct.ql_adapter*, %struct.rx_ring*) #1

declare dso_local i32 @ql_free_rx_resources(%struct.ql_adapter*, %struct.rx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
