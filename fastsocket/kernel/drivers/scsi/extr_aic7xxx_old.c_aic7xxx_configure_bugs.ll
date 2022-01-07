; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_configure_bugs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_configure_bugs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_host = type { i32, i32, i32 }

@AHC_CHIPID_MASK = common dso_local global i32 0, align 4
@AHC_BUG_PCI_2_1_RETRY = common dso_local global i32 0, align 4
@AHC_BUG_TMODE_WIDEODD = common dso_local global i32 0, align 4
@AHC_BUG_CACHETHEN = common dso_local global i32 0, align 4
@AHC_BUG_PCI_MWI = common dso_local global i32 0, align 4
@AHC_BUG_AUTOFLUSH = common dso_local global i32 0, align 4
@AHC_BUG_SCBCHAN_UPLOAD = common dso_local global i32 0, align 4
@AHC_BUG_CACHETHEN_DIS = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_INVALIDATE = common dso_local global i16 0, align 2
@DSCOMMAND0 = common dso_local global i32 0, align 4
@CACHETHEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aic7xxx_host*)* @aic7xxx_configure_bugs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aic7xxx_configure_bugs(%struct.aic7xxx_host* %0) #0 {
  %2 = alloca %struct.aic7xxx_host*, align 8
  %3 = alloca i16, align 2
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %2, align 8
  %4 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %5 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @AHC_CHIPID_MASK, align 4
  %8 = and i32 %6, %7
  switch i32 %8, label %75 [
    i32 135, label %9
    i32 136, label %15
    i32 134, label %15
    i32 133, label %25
    i32 132, label %37
    i32 131, label %45
    i32 130, label %51
    i32 129, label %63
    i32 128, label %69
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* @AHC_BUG_PCI_2_1_RETRY, align 4
  %11 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %12 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  br label %15

15:                                               ; preds = %1, %1, %9
  %16 = load i32, i32* @AHC_BUG_TMODE_WIDEODD, align 4
  %17 = load i32, i32* @AHC_BUG_CACHETHEN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @AHC_BUG_PCI_MWI, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %22 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %76

25:                                               ; preds = %1
  %26 = load i32, i32* @AHC_BUG_TMODE_WIDEODD, align 4
  %27 = load i32, i32* @AHC_BUG_PCI_2_1_RETRY, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @AHC_BUG_CACHETHEN, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @AHC_BUG_PCI_MWI, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %34 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %76

37:                                               ; preds = %1
  %38 = load i32, i32* @AHC_BUG_AUTOFLUSH, align 4
  %39 = load i32, i32* @AHC_BUG_CACHETHEN, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %42 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %76

45:                                               ; preds = %1
  %46 = load i32, i32* @AHC_BUG_SCBCHAN_UPLOAD, align 4
  %47 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %48 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %76

51:                                               ; preds = %1
  %52 = load i32, i32* @AHC_BUG_TMODE_WIDEODD, align 4
  %53 = load i32, i32* @AHC_BUG_PCI_2_1_RETRY, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @AHC_BUG_CACHETHEN, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @AHC_BUG_PCI_MWI, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %60 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %76

63:                                               ; preds = %1
  %64 = load i32, i32* @AHC_BUG_CACHETHEN_DIS, align 4
  %65 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %66 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %76

69:                                               ; preds = %1
  %70 = load i32, i32* @AHC_BUG_SCBCHAN_UPLOAD, align 4
  %71 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %72 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %76

75:                                               ; preds = %1
  br label %76

76:                                               ; preds = %75, %69, %63, %51, %45, %37, %25, %15
  %77 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %78 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @PCI_COMMAND, align 4
  %81 = call i32 @pci_read_config_word(i32 %79, i32 %80, i16* %3)
  %82 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %83 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @AHC_BUG_PCI_MWI, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %76
  %89 = load i16, i16* @PCI_COMMAND_INVALIDATE, align 2
  %90 = zext i16 %89 to i32
  %91 = xor i32 %90, -1
  %92 = load i16, i16* %3, align 2
  %93 = zext i16 %92 to i32
  %94 = and i32 %93, %91
  %95 = trunc i32 %94 to i16
  store i16 %95, i16* %3, align 2
  br label %103

96:                                               ; preds = %76
  %97 = load i16, i16* @PCI_COMMAND_INVALIDATE, align 2
  %98 = zext i16 %97 to i32
  %99 = load i16, i16* %3, align 2
  %100 = zext i16 %99 to i32
  %101 = or i32 %100, %98
  %102 = trunc i32 %101 to i16
  store i16 %102, i16* %3, align 2
  br label %103

103:                                              ; preds = %96, %88
  %104 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %105 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @PCI_COMMAND, align 4
  %108 = load i16, i16* %3, align 2
  %109 = call i32 @pci_write_config_word(i32 %106, i32 %107, i16 zeroext %108)
  %110 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %111 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @AHC_BUG_CACHETHEN, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %103
  %117 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %118 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %119 = load i32, i32* @DSCOMMAND0, align 4
  %120 = call i32 @aic_inb(%struct.aic7xxx_host* %118, i32 %119)
  %121 = load i32, i32* @CACHETHEN, align 4
  %122 = xor i32 %121, -1
  %123 = and i32 %120, %122
  %124 = load i32, i32* @DSCOMMAND0, align 4
  %125 = call i32 @aic_outb(%struct.aic7xxx_host* %117, i32 %123, i32 %124)
  br label %143

126:                                              ; preds = %103
  %127 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %128 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @AHC_BUG_CACHETHEN_DIS, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %126
  %134 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %135 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %136 = load i32, i32* @DSCOMMAND0, align 4
  %137 = call i32 @aic_inb(%struct.aic7xxx_host* %135, i32 %136)
  %138 = load i32, i32* @CACHETHEN, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @DSCOMMAND0, align 4
  %141 = call i32 @aic_outb(%struct.aic7xxx_host* %134, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %133, %126
  br label %143

143:                                              ; preds = %142, %116
  ret void
}

declare dso_local i32 @pci_read_config_word(i32, i32, i16*) #1

declare dso_local i32 @pci_write_config_word(i32, i32, i16 zeroext) #1

declare dso_local i32 @aic_outb(%struct.aic7xxx_host*, i32, i32) #1

declare dso_local i32 @aic_inb(%struct.aic7xxx_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
