; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_raw_set_power_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_raw_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_2__*, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"invalid power transition (from state %d to %d)\0A\00", align 1
@PCI_PM_CTRL = common dso_local global i64 0, align 8
@PCI_PM_CTRL_STATE_MASK = common dso_local global i32 0, align 4
@PCI_PM_CTRL_NO_SOFT_RESET = common dso_local global i32 0, align 4
@pci_pm_d3_delay = common dso_local global i32 0, align 4
@PCI_PM_D2_DELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Refused to change power state, currently in D%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @pci_raw_set_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_raw_set_power_state(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %186

14:                                               ; preds = %2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %186

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 133
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = icmp sgt i32 %26, 129
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %186

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 133
  br i1 %33, label %34, label %55

34:                                               ; preds = %31
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sle i32 %37, 130
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 2
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %186

55:                                               ; preds = %39, %34, %31
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 132
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58, %55
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 %64, 131
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66, %58
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %186

74:                                               ; preds = %66, %63
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %77 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @PCI_PM_CTRL, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @pci_read_config_word(%struct.pci_dev* %75, i64 %80, i32* %6)
  %82 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %83 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  switch i32 %84, label %105 [
    i32 133, label %85
    i32 132, label %85
    i32 131, label %85
    i32 129, label %93
    i32 130, label %93
    i32 128, label %93
  ]

85:                                               ; preds = %74, %74, %74
  %86 = load i32, i32* @PCI_PM_CTRL_STATE_MASK, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %6, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %6, align 4
  br label %106

93:                                               ; preds = %74, %74, %74
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @PCI_PM_CTRL_STATE_MASK, align 4
  %96 = and i32 %94, %95
  %97 = icmp eq i32 %96, 129
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @PCI_PM_CTRL_NO_SOFT_RESET, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  store i32 1, i32* %7, align 4
  br label %104

104:                                              ; preds = %103, %98, %93
  br label %105

105:                                              ; preds = %74, %104
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %105, %85
  %107 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %108 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %109 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @PCI_PM_CTRL, align 8
  %112 = add nsw i64 %110, %111
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @pci_write_config_word(%struct.pci_dev* %107, i64 %112, i32 %113)
  %115 = load i32, i32* %5, align 4
  %116 = icmp eq i32 %115, 129
  br i1 %116, label %122, label %117

117:                                              ; preds = %106
  %118 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %119 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 129
  br i1 %121, label %122, label %125

122:                                              ; preds = %117, %106
  %123 = load i32, i32* @pci_pm_d3_delay, align 4
  %124 = call i32 @msleep(i32 %123)
  br label %137

125:                                              ; preds = %117
  %126 = load i32, i32* %5, align 4
  %127 = icmp eq i32 %126, 131
  br i1 %127, label %133, label %128

128:                                              ; preds = %125
  %129 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %130 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 131
  br i1 %132, label %133, label %136

133:                                              ; preds = %128, %125
  %134 = load i32, i32* @PCI_PM_D2_DELAY, align 4
  %135 = call i32 @udelay(i32 %134)
  br label %136

136:                                              ; preds = %133, %128
  br label %137

137:                                              ; preds = %136, %122
  %138 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %139 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %140 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @PCI_PM_CTRL, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @pci_read_config_word(%struct.pci_dev* %138, i64 %143, i32* %6)
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* @PCI_PM_CTRL_STATE_MASK, align 4
  %147 = and i32 %145, %146
  %148 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %149 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %151 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %5, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %165

155:                                              ; preds = %137
  %156 = call i64 (...) @printk_ratelimit()
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %155
  %159 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %160 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %159, i32 0, i32 2
  %161 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %162 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @dev_info(i32* %160, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %158, %155, %137
  %166 = load i32, i32* %7, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %170 = call i32 @pci_restore_bars(%struct.pci_dev* %169)
  br label %171

171:                                              ; preds = %168, %165
  %172 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %173 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %172, i32 0, i32 1
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %171
  %179 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %180 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %179, i32 0, i32 1
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @pcie_aspm_pm_state_change(i64 %183)
  br label %185

185:                                              ; preds = %178, %171
  store i32 0, i32* %3, align 4
  br label %186

186:                                              ; preds = %185, %71, %45, %28, %19, %13
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @pci_restore_bars(%struct.pci_dev*) #1

declare dso_local i32 @pcie_aspm_pm_state_change(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
