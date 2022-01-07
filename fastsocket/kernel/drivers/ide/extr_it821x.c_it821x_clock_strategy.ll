; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_it821x.c_it821x_clock_strategy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_it821x.c_it821x_clock_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.pci_dev = type { i32 }
%struct.it821x_dev = type { i32**, i32, i64*, i32* }

@ATA_ANY = common dso_local global i32 0, align 4
@ATA_66 = common dso_local global i32 0, align 4
@ATA_50 = common dso_local global i32 0, align 4
@UDMA_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @it821x_clock_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it821x_clock_strategy(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.it821x_dev*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %3, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.pci_dev* @to_pci_dev(i32 %17)
  store %struct.pci_dev* %18, %struct.pci_dev** %4, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = call %struct.it821x_dev* @ide_get_hwifdata(%struct.TYPE_9__* %19)
  store %struct.it821x_dev* %20, %struct.it821x_dev** %5, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %22 = call %struct.TYPE_10__* @ide_get_pair_dev(%struct.TYPE_10__* %21)
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %6, align 8
  store i32 0, i32* %9, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 1
  store i32 %26, i32* %10, align 4
  %27 = load %struct.it821x_dev*, %struct.it821x_dev** %5, align 8
  %28 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %27, i32 0, i32 0
  %29 = load i32**, i32*** %28, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.it821x_dev*, %struct.it821x_dev** %5, align 8
  %35 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %33, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %1
  %43 = load %struct.it821x_dev*, %struct.it821x_dev** %5, align 8
  %44 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %43, i32 0, i32 0
  %45 = load i32**, i32*** %44, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %7, align 4
  %50 = load %struct.it821x_dev*, %struct.it821x_dev** %5, align 8
  %51 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %50, i32 0, i32 0
  %52 = load i32**, i32*** %51, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %8, align 4
  br label %72

57:                                               ; preds = %1
  %58 = load %struct.it821x_dev*, %struct.it821x_dev** %5, align 8
  %59 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %58, i32 0, i32 0
  %60 = load i32**, i32*** %59, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %7, align 4
  %65 = load %struct.it821x_dev*, %struct.it821x_dev** %5, align 8
  %66 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %65, i32 0, i32 0
  %67 = load i32**, i32*** %66, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %57, %42
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @ATA_ANY, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %76, %72
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @ATA_ANY, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %187

83:                                               ; preds = %78
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.it821x_dev*, %struct.it821x_dev** %5, align 8
  %86 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %84, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %187

90:                                               ; preds = %83
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @ATA_66, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i32, i32* @ATA_66, align 4
  %96 = load %struct.it821x_dev*, %struct.it821x_dev** %5, align 8
  %97 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  br label %102

98:                                               ; preds = %90
  %99 = load i32, i32* @ATA_50, align 4
  %100 = load %struct.it821x_dev*, %struct.it821x_dev** %5, align 8
  %101 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  store i32 1, i32* %9, align 4
  br label %102

102:                                              ; preds = %98, %94
  %103 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %104 = call i32 @pci_read_config_byte(%struct.pci_dev* %103, i32 80, i32* %11)
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 1, %107
  %109 = shl i32 1, %108
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %11, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 1, %116
  %118 = shl i32 %113, %117
  %119 = load i32, i32* %11, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %11, align 4
  %121 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @pci_write_config_byte(%struct.pci_dev* %121, i32 80, i32 %122)
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %125 = icmp ne %struct.TYPE_10__* %124, null
  br i1 %125, label %126, label %158

126:                                              ; preds = %102
  %127 = load %struct.it821x_dev*, %struct.it821x_dev** %5, align 8
  %128 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %127, i32 0, i32 2
  %129 = load i64*, i64** %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sub nsw i32 1, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %129, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @UDMA_OFF, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %158

137:                                              ; preds = %126
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %139 = load %struct.it821x_dev*, %struct.it821x_dev** %5, align 8
  %140 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %139, i32 0, i32 2
  %141 = load i64*, i64** %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sub nsw i32 1, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %141, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @it821x_program_udma(%struct.TYPE_10__* %138, i64 %146)
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %149 = load %struct.it821x_dev*, %struct.it821x_dev** %5, align 8
  %150 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %149, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sub nsw i32 1, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @it821x_program(%struct.TYPE_10__* %148, i32 %156)
  br label %158

158:                                              ; preds = %137, %126, %102
  %159 = load %struct.it821x_dev*, %struct.it821x_dev** %5, align 8
  %160 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %159, i32 0, i32 2
  %161 = load i64*, i64** %160, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @UDMA_OFF, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %187

168:                                              ; preds = %158
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %170 = load %struct.it821x_dev*, %struct.it821x_dev** %5, align 8
  %171 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %170, i32 0, i32 2
  %172 = load i64*, i64** %171, align 8
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %172, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @it821x_program_udma(%struct.TYPE_10__* %169, i64 %176)
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %179 = load %struct.it821x_dev*, %struct.it821x_dev** %5, align 8
  %180 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %179, i32 0, i32 3
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @it821x_program(%struct.TYPE_10__* %178, i32 %185)
  br label %187

187:                                              ; preds = %82, %89, %168, %158
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.it821x_dev* @ide_get_hwifdata(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_10__* @ide_get_pair_dev(%struct.TYPE_10__*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @it821x_program_udma(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @it821x_program(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
