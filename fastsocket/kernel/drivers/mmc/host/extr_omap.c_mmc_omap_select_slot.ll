; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_mmc_omap_select_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_mmc_omap_select_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_omap_slot = type { i32, i32, i32*, %struct.mmc_omap_host* }
%struct.mmc_omap_host = type { %struct.mmc_omap_slot*, %struct.TYPE_2__*, i32, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@CON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_omap_slot*, i32)* @mmc_omap_select_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_omap_select_slot(%struct.mmc_omap_slot* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_omap_slot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_omap_host*, align 8
  %6 = alloca i64, align 8
  store %struct.mmc_omap_slot* %0, %struct.mmc_omap_slot** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %3, align 8
  %8 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %7, i32 0, i32 3
  %9 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %8, align 8
  store %struct.mmc_omap_host* %9, %struct.mmc_omap_host** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %51

13:                                               ; preds = %2
  %14 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %15 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %14, i32 0, i32 3
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  br label %18

18:                                               ; preds = %23, %13
  %19 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %20 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %18
  %24 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %25 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %24, i32 0, i32 3
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %29 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %32 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @wait_event(i32 %30, i32 %35)
  %37 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %38 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %37, i32 0, i32 3
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  br label %18

41:                                               ; preds = %18
  %42 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %3, align 8
  %43 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %46 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %45, i32 0, i32 4
  store i32* %44, i32** %46, align 8
  %47 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %48 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %47, i32 0, i32 3
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  br label %51

51:                                               ; preds = %41, %12
  %52 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %53 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %52, i32 0, i32 2
  %54 = call i32 @del_timer(i32* %53)
  %55 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %56 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %55, i32 0, i32 0
  %57 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %56, align 8
  %58 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %3, align 8
  %59 = icmp ne %struct.mmc_omap_slot* %57, %58
  br i1 %59, label %63, label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %60, %51
  %64 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %65 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %64, i32 0, i32 0
  %66 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %65, align 8
  %67 = call i32 @mmc_omap_fclk_offdelay(%struct.mmc_omap_slot* %66)
  br label %68

68:                                               ; preds = %63, %60
  %69 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %70 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %69, i32 0, i32 0
  %71 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %70, align 8
  %72 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %3, align 8
  %73 = icmp ne %struct.mmc_omap_slot* %71, %72
  br i1 %73, label %74, label %106

74:                                               ; preds = %68
  %75 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %76 = load i32, i32* @CON, align 4
  %77 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %3, align 8
  %78 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = and i32 %79, 64512
  %81 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %75, i32 %76, i32 %80)
  %82 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %83 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32 (i32, i32)*, i32 (i32, i32)** %85, align 8
  %87 = icmp ne i32 (i32, i32)* %86, null
  br i1 %87, label %88, label %102

88:                                               ; preds = %74
  %89 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %90 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32 (i32, i32)*, i32 (i32, i32)** %92, align 8
  %94 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %3, align 8
  %95 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @mmc_dev(i32* %96)
  %98 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %3, align 8
  %99 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 %93(i32 %97, i32 %100)
  br label %102

102:                                              ; preds = %88, %74
  %103 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %3, align 8
  %104 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %105 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %104, i32 0, i32 0
  store %struct.mmc_omap_slot* %103, %struct.mmc_omap_slot** %105, align 8
  br label %106

106:                                              ; preds = %102, %68
  %107 = load i32, i32* %4, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %106
  %110 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %111 = call i32 @mmc_omap_fclk_enable(%struct.mmc_omap_host* %110, i32 1)
  %112 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %113 = load i32, i32* @CON, align 4
  %114 = call i32 @OMAP_MMC_READ(%struct.mmc_omap_host* %112, i32 %113)
  %115 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %116 = load i32, i32* @CON, align 4
  %117 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %3, align 8
  %118 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %115, i32 %116, i32 %119)
  br label %124

121:                                              ; preds = %106
  %122 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %123 = call i32 @mmc_omap_fclk_enable(%struct.mmc_omap_host* %122, i32 0)
  br label %124

124:                                              ; preds = %121, %109
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @mmc_omap_fclk_offdelay(%struct.mmc_omap_slot*) #1

declare dso_local i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host*, i32, i32) #1

declare dso_local i32 @mmc_dev(i32*) #1

declare dso_local i32 @mmc_omap_fclk_enable(%struct.mmc_omap_host*, i32) #1

declare dso_local i32 @OMAP_MMC_READ(%struct.mmc_omap_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
