; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mite.c_mite_prep_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mite.c_mite_prep_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mite_channel = type { i64, i32, %struct.TYPE_2__*, %struct.mite_struct* }
%struct.TYPE_2__ = type { i32 }
%struct.mite_struct = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"mite_prep_dma ch%i\0A\00", align 1
@CHOR_DMARESET = common dso_local global i32 0, align 4
@CHOR_FRESET = common dso_local global i32 0, align 4
@CHCR_SET_DMA_IE = common dso_local global i32 0, align 4
@CHCR_LINKSHORT = common dso_local global i32 0, align 4
@CHCR_SET_DONE_IE = common dso_local global i32 0, align 4
@CHCR_BURSTEN = common dso_local global i32 0, align 4
@CHCR_SET_LC_IE = common dso_local global i32 0, align 4
@CHCR_BYTE_SWAP_DEVICE = common dso_local global i32 0, align 4
@CHCR_BYTE_SWAP_MEMORY = common dso_local global i32 0, align 4
@COMEDI_INPUT = common dso_local global i64 0, align 8
@CHCR_DEV_TO_MEM = common dso_local global i32 0, align 4
@CR_ASEQUP = common dso_local global i32 0, align 4
@CR_PSIZE8 = common dso_local global i32 0, align 4
@CR_PSIZE16 = common dso_local global i32 0, align 4
@CR_PSIZE32 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"mite: bug! invalid mem bit width for dma transfer\0A\00", align 1
@CR_PORTIO = common dso_local global i32 0, align 4
@CR_AMDEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"mite: bug! invalid dev bit width for dma transfer\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"exit mite_prep_dma\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mite_prep_dma(%struct.mite_channel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mite_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mite_struct*, align 8
  store %struct.mite_channel* %0, %struct.mite_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.mite_channel*, %struct.mite_channel** %4, align 8
  %14 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %13, i32 0, i32 3
  %15 = load %struct.mite_struct*, %struct.mite_struct** %14, align 8
  store %struct.mite_struct* %15, %struct.mite_struct** %12, align 8
  %16 = load %struct.mite_channel*, %struct.mite_channel** %4, align 8
  %17 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i8*, ...) @MDPRINTK(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @CHOR_DMARESET, align 4
  %21 = load i32, i32* @CHOR_FRESET, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.mite_struct*, %struct.mite_struct** %12, align 8
  %25 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.mite_channel*, %struct.mite_channel** %4, align 8
  %28 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @MITE_CHOR(i32 %29)
  %31 = add nsw i64 %26, %30
  %32 = call i32 @writel(i32 %23, i64 %31)
  %33 = load i32, i32* @CHCR_SET_DMA_IE, align 4
  %34 = load i32, i32* @CHCR_LINKSHORT, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @CHCR_SET_DONE_IE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @CHCR_BURSTEN, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* @CHCR_SET_LC_IE, align 4
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 32
  br i1 %44, label %45, label %54

45:                                               ; preds = %3
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 16
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, i32* @CHCR_BYTE_SWAP_DEVICE, align 4
  %50 = load i32, i32* @CHCR_BYTE_SWAP_MEMORY, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %48, %45, %3
  %55 = load %struct.mite_channel*, %struct.mite_channel** %4, align 8
  %56 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @COMEDI_INPUT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i32, i32* @CHCR_DEV_TO_MEM, align 4
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %60, %54
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.mite_struct*, %struct.mite_struct** %12, align 8
  %67 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.mite_channel*, %struct.mite_channel** %4, align 8
  %70 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @MITE_CHCR(i32 %71)
  %73 = add nsw i64 %68, %72
  %74 = call i32 @writel(i32 %65, i64 %73)
  %75 = call i32 @CR_RL(i32 64)
  %76 = load i32, i32* @CR_ASEQUP, align 4
  %77 = or i32 %75, %76
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %6, align 4
  switch i32 %78, label %91 [
    i32 8, label %79
    i32 16, label %83
    i32 32, label %87
  ]

79:                                               ; preds = %64
  %80 = load i32, i32* @CR_PSIZE8, align 4
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %9, align 4
  br label %93

83:                                               ; preds = %64
  %84 = load i32, i32* @CR_PSIZE16, align 4
  %85 = load i32, i32* %9, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %9, align 4
  br label %93

87:                                               ; preds = %64
  %88 = load i32, i32* @CR_PSIZE32, align 4
  %89 = load i32, i32* %9, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %9, align 4
  br label %93

91:                                               ; preds = %64
  %92 = call i32 @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %87, %83, %79
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.mite_struct*, %struct.mite_struct** %12, align 8
  %96 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.mite_channel*, %struct.mite_channel** %4, align 8
  %99 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @MITE_MCR(i32 %100)
  %102 = add nsw i64 %97, %101
  %103 = call i32 @writel(i32 %94, i64 %102)
  %104 = call i32 @CR_RL(i32 64)
  %105 = load i32, i32* @CR_ASEQUP, align 4
  %106 = or i32 %104, %105
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* @CR_PORTIO, align 4
  %108 = load i32, i32* @CR_AMDEVICE, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.mite_channel*, %struct.mite_channel** %4, align 8
  %111 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @CR_REQSDRQ(i32 %112)
  %114 = or i32 %109, %113
  %115 = load i32, i32* %10, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %5, align 4
  switch i32 %117, label %130 [
    i32 8, label %118
    i32 16, label %122
    i32 32, label %126
  ]

118:                                              ; preds = %93
  %119 = load i32, i32* @CR_PSIZE8, align 4
  %120 = load i32, i32* %10, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %10, align 4
  br label %132

122:                                              ; preds = %93
  %123 = load i32, i32* @CR_PSIZE16, align 4
  %124 = load i32, i32* %10, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %10, align 4
  br label %132

126:                                              ; preds = %93
  %127 = load i32, i32* @CR_PSIZE32, align 4
  %128 = load i32, i32* %10, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %10, align 4
  br label %132

130:                                              ; preds = %93
  %131 = call i32 @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %126, %122, %118
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.mite_struct*, %struct.mite_struct** %12, align 8
  %135 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.mite_channel*, %struct.mite_channel** %4, align 8
  %138 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @MITE_DCR(i32 %139)
  %141 = add nsw i64 %136, %140
  %142 = call i32 @writel(i32 %133, i64 %141)
  %143 = load %struct.mite_struct*, %struct.mite_struct** %12, align 8
  %144 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.mite_channel*, %struct.mite_channel** %4, align 8
  %147 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i64 @MITE_DAR(i32 %148)
  %150 = add nsw i64 %145, %149
  %151 = call i32 @writel(i32 0, i64 %150)
  %152 = call i32 @CR_RL(i32 64)
  %153 = load i32, i32* @CR_ASEQUP, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @CR_PSIZE32, align 4
  %156 = or i32 %154, %155
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %11, align 4
  %158 = load %struct.mite_struct*, %struct.mite_struct** %12, align 8
  %159 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.mite_channel*, %struct.mite_channel** %4, align 8
  %162 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i64 @MITE_LKCR(i32 %163)
  %165 = add nsw i64 %160, %164
  %166 = call i32 @writel(i32 %157, i64 %165)
  %167 = load %struct.mite_channel*, %struct.mite_channel** %4, align 8
  %168 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %167, i32 0, i32 2
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.mite_struct*, %struct.mite_struct** %12, align 8
  %173 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.mite_channel*, %struct.mite_channel** %4, align 8
  %176 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i64 @MITE_LKAR(i32 %177)
  %179 = add nsw i64 %174, %178
  %180 = call i32 @writel(i32 %171, i64 %179)
  %181 = call i32 (i8*, ...) @MDPRINTK(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @MDPRINTK(i8*, ...) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @MITE_CHOR(i32) #1

declare dso_local i64 @MITE_CHCR(i32) #1

declare dso_local i32 @CR_RL(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i64 @MITE_MCR(i32) #1

declare dso_local i32 @CR_REQSDRQ(i32) #1

declare dso_local i64 @MITE_DCR(i32) #1

declare dso_local i64 @MITE_DAR(i32) #1

declare dso_local i64 @MITE_LKCR(i32) #1

declare dso_local i64 @MITE_LKAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
