; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ibm_newemac/extr_debug.c_emac_mal_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ibm_newemac/extr_debug.c_emac_mal_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mal_instance = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [185 x i8] c"** MAL %s Registers **\0ACFG = 0x%08x ESR = 0x%08x IER = 0x%08x\0ATX|CASR = 0x%08x CARR = 0x%08x EOBISR = 0x%08x DEIR = 0x%08x\0ARX|CASR = 0x%08x CARR = 0x%08x EOBISR = 0x%08x DEIR = 0x%08x\0A\00", align 1
@MAL_CFG = common dso_local global i32 0, align 4
@MAL_ESR = common dso_local global i32 0, align 4
@MAL_IER = common dso_local global i32 0, align 4
@MAL_TXCASR = common dso_local global i32 0, align 4
@MAL_TXCARR = common dso_local global i32 0, align 4
@MAL_TXEOBISR = common dso_local global i32 0, align 4
@MAL_TXDEIR = common dso_local global i32 0, align 4
@MAL_RXCASR = common dso_local global i32 0, align 4
@MAL_RXCARR = common dso_local global i32 0, align 4
@MAL_RXEOBISR = common dso_local global i32 0, align 4
@MAL_RXDEIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"TX|\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\0A   \00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"CTP%d = 0x%08x \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\0ARX|\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"RCBS%d = 0x%08x (%d) \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mal_instance*)* @emac_mal_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_mal_dump(%struct.mal_instance* %0) #0 {
  %2 = alloca %struct.mal_instance*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mal_instance* %0, %struct.mal_instance** %2, align 8
  %5 = load %struct.mal_instance*, %struct.mal_instance** %2, align 8
  %6 = getelementptr inbounds %struct.mal_instance, %struct.mal_instance* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.mal_instance*, %struct.mal_instance** %2, align 8
  %13 = load i32, i32* @MAL_CFG, align 4
  %14 = call i32 @get_mal_dcrn(%struct.mal_instance* %12, i32 %13)
  %15 = load %struct.mal_instance*, %struct.mal_instance** %2, align 8
  %16 = load i32, i32* @MAL_ESR, align 4
  %17 = call i32 @get_mal_dcrn(%struct.mal_instance* %15, i32 %16)
  %18 = load %struct.mal_instance*, %struct.mal_instance** %2, align 8
  %19 = load i32, i32* @MAL_IER, align 4
  %20 = call i32 @get_mal_dcrn(%struct.mal_instance* %18, i32 %19)
  %21 = load %struct.mal_instance*, %struct.mal_instance** %2, align 8
  %22 = load i32, i32* @MAL_TXCASR, align 4
  %23 = call i32 @get_mal_dcrn(%struct.mal_instance* %21, i32 %22)
  %24 = load %struct.mal_instance*, %struct.mal_instance** %2, align 8
  %25 = load i32, i32* @MAL_TXCARR, align 4
  %26 = call i32 @get_mal_dcrn(%struct.mal_instance* %24, i32 %25)
  %27 = load %struct.mal_instance*, %struct.mal_instance** %2, align 8
  %28 = load i32, i32* @MAL_TXEOBISR, align 4
  %29 = call i32 @get_mal_dcrn(%struct.mal_instance* %27, i32 %28)
  %30 = load %struct.mal_instance*, %struct.mal_instance** %2, align 8
  %31 = load i32, i32* @MAL_TXDEIR, align 4
  %32 = call i32 @get_mal_dcrn(%struct.mal_instance* %30, i32 %31)
  %33 = load %struct.mal_instance*, %struct.mal_instance** %2, align 8
  %34 = load i32, i32* @MAL_RXCASR, align 4
  %35 = call i32 @get_mal_dcrn(%struct.mal_instance* %33, i32 %34)
  %36 = load %struct.mal_instance*, %struct.mal_instance** %2, align 8
  %37 = load i32, i32* @MAL_RXCARR, align 4
  %38 = call i32 @get_mal_dcrn(%struct.mal_instance* %36, i32 %37)
  %39 = load %struct.mal_instance*, %struct.mal_instance** %2, align 8
  %40 = load i32, i32* @MAL_RXEOBISR, align 4
  %41 = call i32 @get_mal_dcrn(%struct.mal_instance* %39, i32 %40)
  %42 = load %struct.mal_instance*, %struct.mal_instance** %2, align 8
  %43 = load i32, i32* @MAL_RXDEIR, align 4
  %44 = call i32 @get_mal_dcrn(%struct.mal_instance* %42, i32 %43)
  %45 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([185 x i8], [185 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %17, i32 %20, i32 %23, i32 %26, i32 %29, i32 %32, i32 %35, i32 %38, i32 %41, i32 %44)
  %46 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %69, %1
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.mal_instance*, %struct.mal_instance** %2, align 8
  %50 = getelementptr inbounds %struct.mal_instance, %struct.mal_instance* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %47
  %54 = load i32, i32* %3, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* %3, align 4
  %58 = srem i32 %57, 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %56, %53
  %63 = load i32, i32* %3, align 4
  %64 = load %struct.mal_instance*, %struct.mal_instance** %2, align 8
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @MAL_TXCTPR(i32 %65)
  %67 = call i32 @get_mal_dcrn(%struct.mal_instance* %64, i32 %66)
  %68 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %63, i32 %67)
  br label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %47

72:                                               ; preds = %47
  %73 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %96, %72
  %75 = load i32, i32* %3, align 4
  %76 = load %struct.mal_instance*, %struct.mal_instance** %2, align 8
  %77 = getelementptr inbounds %struct.mal_instance, %struct.mal_instance* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %74
  %81 = load i32, i32* %3, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i32, i32* %3, align 4
  %85 = srem i32 %84, 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %83, %80
  %90 = load i32, i32* %3, align 4
  %91 = load %struct.mal_instance*, %struct.mal_instance** %2, align 8
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @MAL_RXCTPR(i32 %92)
  %94 = call i32 @get_mal_dcrn(%struct.mal_instance* %91, i32 %93)
  %95 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %90, i32 %94)
  br label %96

96:                                               ; preds = %89
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  br label %74

99:                                               ; preds = %74
  %100 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %126, %99
  %102 = load i32, i32* %3, align 4
  %103 = load %struct.mal_instance*, %struct.mal_instance** %2, align 8
  %104 = getelementptr inbounds %struct.mal_instance, %struct.mal_instance* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %129

107:                                              ; preds = %101
  %108 = load %struct.mal_instance*, %struct.mal_instance** %2, align 8
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @MAL_RCBS(i32 %109)
  %111 = call i32 @get_mal_dcrn(%struct.mal_instance* %108, i32 %110)
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %3, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %107
  %115 = load i32, i32* %3, align 4
  %116 = srem i32 %115, 3
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %114
  %119 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %114, %107
  %121 = load i32, i32* %3, align 4
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* %4, align 4
  %124 = mul nsw i32 %123, 16
  %125 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %121, i32 %122, i32 %124)
  br label %126

126:                                              ; preds = %120
  %127 = load i32, i32* %3, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %3, align 4
  br label %101

129:                                              ; preds = %101
  %130 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @get_mal_dcrn(%struct.mal_instance*, i32) #1

declare dso_local i32 @MAL_TXCTPR(i32) #1

declare dso_local i32 @MAL_RXCTPR(i32) #1

declare dso_local i32 @MAL_RCBS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
