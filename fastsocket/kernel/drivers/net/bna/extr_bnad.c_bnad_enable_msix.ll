; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_enable_msix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_enable_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@BNAD_CF_MSIX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"BNA: %d MSI-X vectors allocated < %d requested\0A\00", align 1
@BNAD_MAILBOX_MSIX_VECTORS = common dso_local global i32 0, align 4
@BNAD_NUM_TXQ = common dso_local global i32 0, align 4
@BNAD_NUM_RXP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"BNA: MSI-X enable failed - operating in INTx mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnad*)* @bnad_enable_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnad_enable_msix(%struct.bnad* %0) #0 {
  %2 = alloca %struct.bnad*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.bnad* %0, %struct.bnad** %2, align 8
  %6 = load %struct.bnad*, %struct.bnad** %2, align 8
  %7 = getelementptr inbounds %struct.bnad, %struct.bnad* %6, i32 0, i32 2
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.bnad*, %struct.bnad** %2, align 8
  %11 = getelementptr inbounds %struct.bnad, %struct.bnad* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @BNAD_CF_MSIX, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.bnad*, %struct.bnad** %2, align 8
  %18 = getelementptr inbounds %struct.bnad, %struct.bnad* %17, i32 0, i32 2
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  br label %164

21:                                               ; preds = %1
  %22 = load %struct.bnad*, %struct.bnad** %2, align 8
  %23 = getelementptr inbounds %struct.bnad, %struct.bnad* %22, i32 0, i32 2
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.bnad*, %struct.bnad** %2, align 8
  %27 = getelementptr inbounds %struct.bnad, %struct.bnad* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %164

31:                                               ; preds = %21
  %32 = load %struct.bnad*, %struct.bnad** %2, align 8
  %33 = getelementptr inbounds %struct.bnad, %struct.bnad* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.TYPE_4__* @kcalloc(i32 %34, i32 4, i32 %35)
  %37 = load %struct.bnad*, %struct.bnad** %2, align 8
  %38 = getelementptr inbounds %struct.bnad, %struct.bnad* %37, i32 0, i32 3
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %38, align 8
  %39 = load %struct.bnad*, %struct.bnad** %2, align 8
  %40 = getelementptr inbounds %struct.bnad, %struct.bnad* %39, i32 0, i32 3
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = icmp ne %struct.TYPE_4__* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %31
  br label %138

44:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %60, %44
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.bnad*, %struct.bnad** %2, align 8
  %48 = getelementptr inbounds %struct.bnad, %struct.bnad* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.bnad*, %struct.bnad** %2, align 8
  %54 = getelementptr inbounds %struct.bnad, %struct.bnad* %53, i32 0, i32 3
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %52, i32* %59, align 4
  br label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %45

63:                                               ; preds = %45
  %64 = load %struct.bnad*, %struct.bnad** %2, align 8
  %65 = getelementptr inbounds %struct.bnad, %struct.bnad* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.bnad*, %struct.bnad** %2, align 8
  %68 = getelementptr inbounds %struct.bnad, %struct.bnad* %67, i32 0, i32 3
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load %struct.bnad*, %struct.bnad** %2, align 8
  %71 = getelementptr inbounds %struct.bnad, %struct.bnad* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pci_enable_msix(i32 %66, %struct.TYPE_4__* %69, i32 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %128

76:                                               ; preds = %63
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.bnad*, %struct.bnad** %2, align 8
  %79 = getelementptr inbounds %struct.bnad, %struct.bnad* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %80)
  %82 = load %struct.bnad*, %struct.bnad** %2, align 8
  %83 = getelementptr inbounds %struct.bnad, %struct.bnad* %82, i32 0, i32 2
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @spin_lock_irqsave(i32* %83, i64 %84)
  %86 = load %struct.bnad*, %struct.bnad** %2, align 8
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @BNAD_MAILBOX_MSIX_VECTORS, align 4
  %89 = sub nsw i32 %87, %88
  %90 = sdiv i32 %89, 2
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @BNAD_MAILBOX_MSIX_VECTORS, align 4
  %93 = sub nsw i32 %91, %92
  %94 = sdiv i32 %93, 2
  %95 = call i32 @bnad_q_num_adjust(%struct.bnad* %86, i32 %90, i32 %94)
  %96 = load %struct.bnad*, %struct.bnad** %2, align 8
  %97 = getelementptr inbounds %struct.bnad, %struct.bnad* %96, i32 0, i32 2
  %98 = load i64, i64* %5, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  %100 = load i32, i32* @BNAD_NUM_TXQ, align 4
  %101 = load i32, i32* @BNAD_NUM_RXP, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i32, i32* @BNAD_MAILBOX_MSIX_VECTORS, align 4
  %104 = add nsw i32 %102, %103
  %105 = load %struct.bnad*, %struct.bnad** %2, align 8
  %106 = getelementptr inbounds %struct.bnad, %struct.bnad* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.bnad*, %struct.bnad** %2, align 8
  %108 = getelementptr inbounds %struct.bnad, %struct.bnad* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %76
  br label %138

113:                                              ; preds = %76
  %114 = load %struct.bnad*, %struct.bnad** %2, align 8
  %115 = getelementptr inbounds %struct.bnad, %struct.bnad* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.bnad*, %struct.bnad** %2, align 8
  %118 = getelementptr inbounds %struct.bnad, %struct.bnad* %117, i32 0, i32 3
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = load %struct.bnad*, %struct.bnad** %2, align 8
  %121 = getelementptr inbounds %struct.bnad, %struct.bnad* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @pci_enable_msix(i32 %116, %struct.TYPE_4__* %119, i32 %122)
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %4, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %113
  br label %138

127:                                              ; preds = %113
  br label %133

128:                                              ; preds = %63
  %129 = load i32, i32* %4, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  br label %138

132:                                              ; preds = %128
  br label %133

133:                                              ; preds = %132, %127
  %134 = load %struct.bnad*, %struct.bnad** %2, align 8
  %135 = getelementptr inbounds %struct.bnad, %struct.bnad* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @pci_intx(i32 %136, i32 0)
  br label %164

138:                                              ; preds = %131, %126, %112, %43
  %139 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %140 = load %struct.bnad*, %struct.bnad** %2, align 8
  %141 = getelementptr inbounds %struct.bnad, %struct.bnad* %140, i32 0, i32 3
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = call i32 @kfree(%struct.TYPE_4__* %142)
  %144 = load %struct.bnad*, %struct.bnad** %2, align 8
  %145 = getelementptr inbounds %struct.bnad, %struct.bnad* %144, i32 0, i32 3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %145, align 8
  %146 = load %struct.bnad*, %struct.bnad** %2, align 8
  %147 = getelementptr inbounds %struct.bnad, %struct.bnad* %146, i32 0, i32 1
  store i32 0, i32* %147, align 4
  %148 = load %struct.bnad*, %struct.bnad** %2, align 8
  %149 = getelementptr inbounds %struct.bnad, %struct.bnad* %148, i32 0, i32 2
  %150 = load i64, i64* %5, align 8
  %151 = call i32 @spin_lock_irqsave(i32* %149, i64 %150)
  %152 = load i32, i32* @BNAD_CF_MSIX, align 4
  %153 = xor i32 %152, -1
  %154 = load %struct.bnad*, %struct.bnad** %2, align 8
  %155 = getelementptr inbounds %struct.bnad, %struct.bnad* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = and i32 %156, %153
  store i32 %157, i32* %155, align 8
  %158 = load %struct.bnad*, %struct.bnad** %2, align 8
  %159 = call i32 @bnad_q_num_init(%struct.bnad* %158)
  %160 = load %struct.bnad*, %struct.bnad** %2, align 8
  %161 = getelementptr inbounds %struct.bnad, %struct.bnad* %160, i32 0, i32 2
  %162 = load i64, i64* %5, align 8
  %163 = call i32 @spin_unlock_irqrestore(i32* %161, i64 %162)
  br label %164

164:                                              ; preds = %138, %133, %30, %16
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.TYPE_4__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @pci_enable_msix(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @bnad_q_num_adjust(%struct.bnad*, i32, i32) #1

declare dso_local i32 @pci_intx(i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local i32 @bnad_q_num_init(%struct.bnad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
