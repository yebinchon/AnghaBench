; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_sgi_hotplug.c_sn_slot_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_sgi_hotplug.c_sn_slot_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hotplug_slot = type { %struct.slot* }
%struct.slot = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.pcibus_info = type { i32 }
%struct.pcibr_slot_disable_resp = type { i32, i32 }

@PCI_REQ_SLOT_ELIGIBLE = common dso_local global i32 0, align 4
@PCI_SLOT_ALREADY_DOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Slot %s already inactive\0A\00", align 1
@PCI_EMPTY_33MHZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot remove last 33MHz card\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@PCI_L1_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"L1 failure %d with message \0A%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"remove failed with error %d sub-error %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@PCI_REQ_SLOT_DISABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"remove successful\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"remove failed rc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hotplug_slot*, i32, i32)* @sn_slot_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sn_slot_disable(%struct.hotplug_slot* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hotplug_slot*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.slot*, align 8
  %9 = alloca %struct.pcibus_info*, align 8
  %10 = alloca %struct.pcibr_slot_disable_resp, align 4
  %11 = alloca i32, align 4
  store %struct.hotplug_slot* %0, %struct.hotplug_slot** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.hotplug_slot*, %struct.hotplug_slot** %5, align 8
  %13 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %12, i32 0, i32 0
  %14 = load %struct.slot*, %struct.slot** %13, align 8
  store %struct.slot* %14, %struct.slot** %8, align 8
  %15 = load %struct.slot*, %struct.slot** %8, align 8
  %16 = getelementptr inbounds %struct.slot, %struct.slot* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = call %struct.pcibus_info* @SN_PCIBUS_BUSSOFT_INFO(%struct.TYPE_4__* %17)
  store %struct.pcibus_info* %18, %struct.pcibus_info** %9, align 8
  %19 = load %struct.pcibus_info*, %struct.pcibus_info** %9, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @sal_pcibr_slot_disable(%struct.pcibus_info* %19, i32 %20, i32 %21, %struct.pcibr_slot_disable_resp* %10)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @PCI_REQ_SLOT_ELIGIBLE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %3
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @PCI_SLOT_ALREADY_DOWN, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load %struct.slot*, %struct.slot** %8, align 8
  %32 = getelementptr inbounds %struct.slot, %struct.slot* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.slot*, %struct.slot** %8, align 8
  %38 = getelementptr inbounds %struct.slot, %struct.slot* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i32 1, i32* %4, align 4
  br label %153

41:                                               ; preds = %26, %3
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @PCI_REQ_SLOT_ELIGIBLE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @PCI_EMPTY_33MHZ, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load %struct.slot*, %struct.slot** %8, align 8
  %51 = getelementptr inbounds %struct.slot, %struct.slot* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @EPERM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %153

59:                                               ; preds = %45, %41
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @PCI_REQ_SLOT_ELIGIBLE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %59
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @PCI_L1_ERR, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load %struct.slot*, %struct.slot** %8, align 8
  %69 = getelementptr inbounds %struct.slot, %struct.slot* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.pcibr_slot_disable_resp, %struct.pcibr_slot_disable_resp* %10, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.pcibr_slot_disable_resp, %struct.pcibr_slot_disable_resp* %10, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %77)
  %79 = load i32, i32* @EPERM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %153

81:                                               ; preds = %63, %59
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @PCI_REQ_SLOT_ELIGIBLE, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %81
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %85
  %89 = load %struct.slot*, %struct.slot** %8, align 8
  %90 = getelementptr inbounds %struct.slot, %struct.slot* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %11, align 4
  %96 = getelementptr inbounds %struct.pcibr_slot_disable_resp, %struct.pcibr_slot_disable_resp* %10, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %94, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %95, i32 %97)
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %153

101:                                              ; preds = %85, %81
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @PCI_REQ_SLOT_ELIGIBLE, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  store i32 0, i32* %4, align 4
  br label %153

109:                                              ; preds = %105, %101
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @PCI_REQ_SLOT_DISABLE, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %135

113:                                              ; preds = %109
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %135, label %116

116:                                              ; preds = %113
  %117 = load %struct.slot*, %struct.slot** %8, align 8
  %118 = getelementptr inbounds %struct.slot, %struct.slot* %117, i32 0, i32 1
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = call %struct.pcibus_info* @SN_PCIBUS_BUSSOFT_INFO(%struct.TYPE_4__* %119)
  store %struct.pcibus_info* %120, %struct.pcibus_info** %9, align 8
  %121 = load i32, i32* %6, align 4
  %122 = shl i32 1, %121
  %123 = xor i32 %122, -1
  %124 = load %struct.pcibus_info*, %struct.pcibus_info** %9, align 8
  %125 = getelementptr inbounds %struct.pcibus_info, %struct.pcibus_info* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 4
  %128 = load %struct.slot*, %struct.slot** %8, align 8
  %129 = getelementptr inbounds %struct.slot, %struct.slot* %128, i32 0, i32 1
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %133, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %153

135:                                              ; preds = %113, %109
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @PCI_REQ_SLOT_DISABLE, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %151

139:                                              ; preds = %135
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %139
  %143 = load %struct.slot*, %struct.slot** %8, align 8
  %144 = getelementptr inbounds %struct.slot, %struct.slot* %143, i32 0, i32 1
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i32, i32* %11, align 4
  %150 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %148, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %142, %139, %135
  %152 = load i32, i32* %11, align 4
  store i32 %152, i32* %4, align 4
  br label %153

153:                                              ; preds = %151, %116, %108, %88, %67, %49, %30
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local %struct.pcibus_info* @SN_PCIBUS_BUSSOFT_INFO(%struct.TYPE_4__*) #1

declare dso_local i32 @sal_pcibr_slot_disable(%struct.pcibus_info*, i32, i32, %struct.pcibr_slot_disable_resp*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
