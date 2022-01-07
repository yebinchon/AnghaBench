; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_deinit_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_deinit_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32, i32, i64, i64*, %struct.TYPE_9__*, %struct.TYPE_8__, %struct.TYPE_7__, i32, i64, i32, i32, i32, %struct.TYPE_6__*, i64, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.sk_buff** }
%struct.sk_buff = type { i64 }

@IDT77252_BIT_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: SAR not yet initialized.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"idt77252: deinitialize card %u\0A\00", align 1
@SAR_REG_CFG = common dso_local global i32 0, align 4
@FBQ_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"%s: Release RSQ ...\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%s: Release TSQ ...\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"idt77252: Release IRQ.\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"%s: Card deinitialized.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idt77252_dev*)* @deinit_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deinit_card(%struct.idt77252_dev* %0) #0 {
  %2 = alloca %struct.idt77252_dev*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %2, align 8
  %6 = load i32, i32* @IDT77252_BIT_INIT, align 4
  %7 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %8 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %7, i32 0, i32 1
  %9 = call i32 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %13 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %198

16:                                               ; preds = %1
  %17 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %18 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %17, i32 0, i32 14
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i8*, ...) @DIPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @SAR_REG_CFG, align 4
  %22 = call i32 @writel(i32 0, i32 %21)
  %23 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %24 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %23, i32 0, i32 13
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %29 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %28, i32 0, i32 13
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @atm_dev_deregister(i64 %30)
  br label %32

32:                                               ; preds = %27, %16
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %88, %32
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %91

36:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %84, %36
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @FBQ_SIZE, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %87

41:                                               ; preds = %37
  %42 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %43 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %42, i32 0, i32 12
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.sk_buff**, %struct.sk_buff*** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %49, i64 %51
  %53 = load %struct.sk_buff*, %struct.sk_buff** %52, align 8
  store %struct.sk_buff* %53, %struct.sk_buff** %3, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %55 = icmp ne %struct.sk_buff* %54, null
  br i1 %55, label %56, label %83

56:                                               ; preds = %41
  %57 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %58 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %57, i32 0, i32 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = call i32 @IDT77252_PRV_PADDR(%struct.sk_buff* %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %63 = call i64 @skb_end_pointer(%struct.sk_buff* %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %63, %66
  %68 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %69 = call i32 @pci_unmap_single(%struct.TYPE_9__* %59, i32 %61, i64 %67, i32 %68)
  %70 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %71 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %70, i32 0, i32 12
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.sk_buff**, %struct.sk_buff*** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %77, i64 %79
  store %struct.sk_buff* null, %struct.sk_buff** %80, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %82 = call i32 @dev_kfree_skb(%struct.sk_buff* %81)
  br label %83

83:                                               ; preds = %56, %41
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %37

87:                                               ; preds = %37
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %33

91:                                               ; preds = %33
  %92 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %93 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %92, i32 0, i32 11
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @vfree(i32 %94)
  %96 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %97 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %96, i32 0, i32 10
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @vfree(i32 %98)
  %100 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %101 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %100, i32 0, i32 9
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @vfree(i32 %102)
  %104 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %105 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %104, i32 0, i32 8
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %91
  %109 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %110 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %109, i32 0, i32 4
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %113 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %112, i32 0, i32 8
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %116 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @pci_free_consistent(%struct.TYPE_9__* %111, i32 8, i64 %114, i32 %117)
  br label %119

119:                                              ; preds = %108, %91
  %120 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %121 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %119
  %126 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %127 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i8*, ...) @DIPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  %130 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %131 = call i32 @deinit_rsq(%struct.idt77252_dev* %130)
  br label %132

132:                                              ; preds = %125, %119
  %133 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %134 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %133, i32 0, i32 5
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %132
  %139 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %140 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 (i8*, ...) @DIPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %141)
  %143 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %144 = call i32 @deinit_tsq(%struct.idt77252_dev* %143)
  br label %145

145:                                              ; preds = %138, %132
  %146 = call i32 (i8*, ...) @DIPRINTK(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %147 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %148 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %147, i32 0, i32 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %153 = call i32 @free_irq(i32 %151, %struct.idt77252_dev* %152)
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %176, %145
  %155 = load i32, i32* %4, align 4
  %156 = icmp slt i32 %155, 4
  br i1 %156, label %157, label %179

157:                                              ; preds = %154
  %158 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %159 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %158, i32 0, i32 3
  %160 = load i64*, i64** %159, align 8
  %161 = load i32, i32* %4, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %157
  %167 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %168 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %167, i32 0, i32 3
  %169 = load i64*, i64** %168, align 8
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i64, i64* %169, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @iounmap(i64 %173)
  br label %175

175:                                              ; preds = %166, %157
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %4, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %4, align 4
  br label %154

179:                                              ; preds = %154
  %180 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %181 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %186 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @iounmap(i64 %187)
  br label %189

189:                                              ; preds = %184, %179
  %190 = load i32, i32* @IDT77252_BIT_INIT, align 4
  %191 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %192 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %191, i32 0, i32 1
  %193 = call i32 @clear_bit(i32 %190, i32* %192)
  %194 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %195 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 (i8*, ...) @DIPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %196)
  br label %198

198:                                              ; preds = %189, %11
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @DIPRINTK(i8*, ...) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @atm_dev_deregister(i64) #1

declare dso_local i32 @pci_unmap_single(%struct.TYPE_9__*, i32, i64, i32) #1

declare dso_local i32 @IDT77252_PRV_PADDR(%struct.sk_buff*) #1

declare dso_local i64 @skb_end_pointer(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @pci_free_consistent(%struct.TYPE_9__*, i32, i64, i32) #1

declare dso_local i32 @deinit_rsq(%struct.idt77252_dev*) #1

declare dso_local i32 @deinit_tsq(%struct.idt77252_dev*) #1

declare dso_local i32 @free_irq(i32, %struct.idt77252_dev*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
