; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_make_sgl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_make_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sg_ent = type { i8**, i8** }
%struct.pci_dev = type { i32 }
%struct.TYPE_2__ = type { i32, i32* }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sg_ent*, i8*, i32, %struct.pci_dev*)* @make_sgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_sgl(%struct.sk_buff* %0, %struct.sg_ent* %1, i8* %2, i32 %3, %struct.pci_dev* %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sg_ent*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.sg_ent* %1, %struct.sg_ent** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.pci_dev* %4, %struct.pci_dev** %10, align 8
  store i32 0, i32* %13, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %5
  %19 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %23 = call i32 @pci_map_single(%struct.pci_dev* %19, i8* %20, i32 %21, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i8* @cpu_to_be32(i32 %24)
  %26 = load %struct.sg_ent*, %struct.sg_ent** %7, align 8
  %27 = getelementptr inbounds %struct.sg_ent, %struct.sg_ent* %26, i32 0, i32 0
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  store i8* %25, i8** %29, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i8* @cpu_to_be64(i32 %30)
  %32 = load %struct.sg_ent*, %struct.sg_ent** %7, align 8
  %33 = getelementptr inbounds %struct.sg_ent, %struct.sg_ent* %32, i32 0, i32 1
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  store i8* %31, i8** %35, align 8
  store i32 1, i32* %13, align 4
  br label %36

36:                                               ; preds = %18, %5
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %85, %36
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %88

45:                                               ; preds = %41
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32* %52, i32** %15, align 8
  %53 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 0
  %55 = load i32*, i32** %15, align 8
  %56 = load i32*, i32** %15, align 8
  %57 = call i32 @skb_frag_size(i32* %56)
  %58 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %59 = call i32 @skb_frag_dma_map(i32* %54, i32* %55, i32 0, i32 %57, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32*, i32** %15, align 8
  %61 = call i32 @skb_frag_size(i32* %60)
  %62 = call i8* @cpu_to_be32(i32 %61)
  %63 = load %struct.sg_ent*, %struct.sg_ent** %7, align 8
  %64 = getelementptr inbounds %struct.sg_ent, %struct.sg_ent* %63, i32 0, i32 0
  %65 = load i8**, i8*** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  store i8* %62, i8** %68, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i8* @cpu_to_be64(i32 %69)
  %71 = load %struct.sg_ent*, %struct.sg_ent** %7, align 8
  %72 = getelementptr inbounds %struct.sg_ent, %struct.sg_ent* %71, i32 0, i32 1
  %73 = load i8**, i8*** %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  store i8* %70, i8** %76, align 8
  %77 = load i32, i32* %13, align 4
  %78 = xor i32 %77, 1
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %45
  %82 = load %struct.sg_ent*, %struct.sg_ent** %7, align 8
  %83 = getelementptr inbounds %struct.sg_ent, %struct.sg_ent* %82, i32 1
  store %struct.sg_ent* %83, %struct.sg_ent** %7, align 8
  br label %84

84:                                               ; preds = %81, %45
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %12, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %12, align 4
  br label %41

88:                                               ; preds = %41
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load %struct.sg_ent*, %struct.sg_ent** %7, align 8
  %93 = getelementptr inbounds %struct.sg_ent, %struct.sg_ent* %92, i32 0, i32 0
  %94 = load i8**, i8*** %93, align 8
  %95 = load i32, i32* %13, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  store i8* null, i8** %97, align 8
  br label %98

98:                                               ; preds = %91, %88
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i32
  %103 = add i32 %99, %102
  %104 = mul i32 %103, 3
  %105 = udiv i32 %104, 2
  %106 = load i32, i32* %13, align 4
  %107 = add i32 %105, %106
  ret i32 %107
}

declare dso_local i32 @pci_map_single(%struct.pci_dev*, i8*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_dma_map(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
