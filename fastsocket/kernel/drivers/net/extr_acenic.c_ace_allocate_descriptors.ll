; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_acenic.c_ace_allocate_descriptors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_acenic.c_ace_allocate_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ace_private = type { i32*, i32, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32*, i32*, i32*, i32 }

@RX_STD_RING_ENTRIES = common dso_local global i32 0, align 4
@RX_JUMBO_RING_ENTRIES = common dso_local global i32 0, align 4
@RX_MINI_RING_ENTRIES = common dso_local global i32 0, align 4
@RX_RETURN_RING_ENTRIES = common dso_local global i32 0, align 4
@EVT_RING_ENTRIES = common dso_local global i32 0, align 4
@MAX_TX_RING_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ace_allocate_descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ace_allocate_descriptors(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ace_private*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ace_private* @netdev_priv(%struct.net_device* %6)
  store %struct.ace_private* %7, %struct.ace_private** %4, align 8
  %8 = load i32, i32* @RX_STD_RING_ENTRIES, align 4
  %9 = load i32, i32* @RX_JUMBO_RING_ENTRIES, align 4
  %10 = add nsw i32 %8, %9
  %11 = load i32, i32* @RX_MINI_RING_ENTRIES, align 4
  %12 = add nsw i32 %10, %11
  %13 = load i32, i32* @RX_RETURN_RING_ENTRIES, align 4
  %14 = add nsw i32 %12, %13
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %19 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %23 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %22, i32 0, i32 15
  %24 = call i8* @pci_alloc_consistent(i32 %20, i32 %21, i32* %23)
  %25 = bitcast i8* %24 to i32*
  %26 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %27 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %26, i32 0, i32 14
  store i32* %25, i32** %27, align 8
  %28 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %29 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %28, i32 0, i32 14
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  br label %148

33:                                               ; preds = %1
  %34 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %35 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %34, i32 0, i32 14
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @RX_STD_RING_ENTRIES, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %41 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %40, i32 0, i32 13
  store i32* %39, i32** %41, align 8
  %42 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %43 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %42, i32 0, i32 13
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @RX_JUMBO_RING_ENTRIES, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %49 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %48, i32 0, i32 11
  store i32* %47, i32** %49, align 8
  %50 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %51 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %50, i32 0, i32 11
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* @RX_MINI_RING_ENTRIES, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %57 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %56, i32 0, i32 12
  store i32* %55, i32** %57, align 8
  %58 = load i32, i32* @EVT_RING_ENTRIES, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 4, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %5, align 4
  %62 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %63 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %67 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %66, i32 0, i32 10
  %68 = call i8* @pci_alloc_consistent(i32 %64, i32 %65, i32* %67)
  %69 = bitcast i8* %68 to i32*
  %70 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %71 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %70, i32 0, i32 9
  store i32* %69, i32** %71, align 8
  %72 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %73 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %72, i32 0, i32 9
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %33
  br label %148

77:                                               ; preds = %33
  %78 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %79 = call i32 @ACE_IS_TIGON_I(%struct.ace_private* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %102, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* @MAX_TX_RING_ENTRIES, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 4, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %5, align 4
  %86 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %87 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %91 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %90, i32 0, i32 8
  %92 = call i8* @pci_alloc_consistent(i32 %88, i32 %89, i32* %91)
  %93 = bitcast i8* %92 to i32*
  %94 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %95 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %94, i32 0, i32 7
  store i32* %93, i32** %95, align 8
  %96 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %97 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %96, i32 0, i32 7
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %81
  br label %148

101:                                              ; preds = %81
  br label %102

102:                                              ; preds = %101, %77
  %103 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %104 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %107 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %106, i32 0, i32 6
  %108 = call i8* @pci_alloc_consistent(i32 %105, i32 4, i32* %107)
  %109 = bitcast i8* %108 to i32*
  %110 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %111 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %110, i32 0, i32 5
  store i32* %109, i32** %111, align 8
  %112 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %113 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %112, i32 0, i32 5
  %114 = load i32*, i32** %113, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %102
  br label %148

117:                                              ; preds = %102
  %118 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %119 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %122 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %121, i32 0, i32 4
  %123 = call i8* @pci_alloc_consistent(i32 %120, i32 4, i32* %122)
  %124 = bitcast i8* %123 to i32*
  %125 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %126 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %125, i32 0, i32 3
  store i32* %124, i32** %126, align 8
  %127 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %128 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %132

131:                                              ; preds = %117
  br label %148

132:                                              ; preds = %117
  %133 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %134 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %137 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %136, i32 0, i32 1
  %138 = call i8* @pci_alloc_consistent(i32 %135, i32 4, i32* %137)
  %139 = bitcast i8* %138 to i32*
  %140 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %141 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %140, i32 0, i32 0
  store i32* %139, i32** %141, align 8
  %142 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %143 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = icmp eq i32* %144, null
  br i1 %145, label %146, label %147

146:                                              ; preds = %132
  br label %148

147:                                              ; preds = %132
  store i32 0, i32* %2, align 4
  br label %151

148:                                              ; preds = %146, %131, %116, %100, %76, %32
  %149 = load %struct.net_device*, %struct.net_device** %3, align 8
  %150 = call i32 @ace_init_cleanup(%struct.net_device* %149)
  store i32 1, i32* %2, align 4
  br label %151

151:                                              ; preds = %148, %147
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local %struct.ace_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @ACE_IS_TIGON_I(%struct.ace_private*) #1

declare dso_local i32 @ace_init_cleanup(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
