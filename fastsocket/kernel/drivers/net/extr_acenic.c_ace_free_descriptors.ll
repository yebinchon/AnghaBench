; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_acenic.c_ace_free_descriptors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_acenic.c_ace_free_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ace_private = type { i8*, i8*, i8*, i32*, i32, i32, i32*, i32, i32*, i32, i32, i32, i32*, i32*, i32*, i32 }

@RX_STD_RING_ENTRIES = common dso_local global i32 0, align 4
@RX_JUMBO_RING_ENTRIES = common dso_local global i32 0, align 4
@RX_MINI_RING_ENTRIES = common dso_local global i32 0, align 4
@RX_RETURN_RING_ENTRIES = common dso_local global i32 0, align 4
@EVT_RING_ENTRIES = common dso_local global i32 0, align 4
@MAX_TX_RING_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ace_free_descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ace_free_descriptors(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ace_private*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ace_private* @netdev_priv(%struct.net_device* %5)
  store %struct.ace_private* %6, %struct.ace_private** %3, align 8
  %7 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %8 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %41

11:                                               ; preds = %1
  %12 = load i32, i32* @RX_STD_RING_ENTRIES, align 4
  %13 = load i32, i32* @RX_JUMBO_RING_ENTRIES, align 4
  %14 = add nsw i32 %12, %13
  %15 = load i32, i32* @RX_MINI_RING_ENTRIES, align 4
  %16 = add nsw i32 %14, %15
  %17 = load i32, i32* @RX_RETURN_RING_ENTRIES, align 4
  %18 = add nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %4, align 4
  %22 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %23 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %27 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %30 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %29, i32 0, i32 15
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @pci_free_consistent(i32 %24, i32 %25, i8* %28, i32 %31)
  %33 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %34 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %33, i32 0, i32 0
  store i8* null, i8** %34, align 8
  %35 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %36 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %35, i32 0, i32 14
  store i32* null, i32** %36, align 8
  %37 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %38 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %37, i32 0, i32 13
  store i32* null, i32** %38, align 8
  %39 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %40 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %39, i32 0, i32 12
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %11, %1
  %42 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %43 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %64

46:                                               ; preds = %41
  %47 = load i32, i32* @EVT_RING_ENTRIES, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 4, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %4, align 4
  %51 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %52 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %56 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %59 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %58, i32 0, i32 11
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @pci_free_consistent(i32 %53, i32 %54, i8* %57, i32 %60)
  %62 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %63 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %62, i32 0, i32 1
  store i8* null, i8** %63, align 8
  br label %64

64:                                               ; preds = %46, %41
  %65 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %66 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %89

69:                                               ; preds = %64
  %70 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %71 = call i32 @ACE_IS_TIGON_I(%struct.ace_private* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %89, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* @MAX_TX_RING_ENTRIES, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 4, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %4, align 4
  %78 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %79 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %83 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %86 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %85, i32 0, i32 10
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @pci_free_consistent(i32 %80, i32 %81, i8* %84, i32 %87)
  br label %89

89:                                               ; preds = %73, %69, %64
  %90 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %91 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %90, i32 0, i32 2
  store i8* null, i8** %91, align 8
  %92 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %93 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %92, i32 0, i32 8
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %110

96:                                               ; preds = %89
  %97 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %98 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %101 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %100, i32 0, i32 8
  %102 = load i32*, i32** %101, align 8
  %103 = bitcast i32* %102 to i8*
  %104 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %105 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %104, i32 0, i32 9
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @pci_free_consistent(i32 %99, i32 4, i8* %103, i32 %106)
  %108 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %109 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %108, i32 0, i32 8
  store i32* null, i32** %109, align 8
  br label %110

110:                                              ; preds = %96, %89
  %111 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %112 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %111, i32 0, i32 6
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %129

115:                                              ; preds = %110
  %116 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %117 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %120 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %119, i32 0, i32 6
  %121 = load i32*, i32** %120, align 8
  %122 = bitcast i32* %121 to i8*
  %123 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %124 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @pci_free_consistent(i32 %118, i32 4, i8* %122, i32 %125)
  %127 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %128 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %127, i32 0, i32 6
  store i32* null, i32** %128, align 8
  br label %129

129:                                              ; preds = %115, %110
  %130 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %131 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %148

134:                                              ; preds = %129
  %135 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %136 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %139 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = bitcast i32* %140 to i8*
  %142 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %143 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @pci_free_consistent(i32 %137, i32 4, i8* %141, i32 %144)
  %146 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %147 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %146, i32 0, i32 3
  store i32* null, i32** %147, align 8
  br label %148

148:                                              ; preds = %134, %129
  ret void
}

declare dso_local %struct.ace_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i8*, i32) #1

declare dso_local i32 @ACE_IS_TIGON_I(%struct.ace_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
