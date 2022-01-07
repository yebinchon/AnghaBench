; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_au1550nd.c_au1550_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_au1550nd.c_au1550_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, %struct.nand_chip* }
%struct.nand_chip = type { i32, i32, i32, i32 (%struct.mtd_info.0*)* }
%struct.mtd_info.0 = type opaque

@NAND_CTL_SETCLE = common dso_local global i32 0, align 4
@NAND_CTL_CLRCLE = common dso_local global i32 0, align 4
@NAND_CTL_SETALE = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@NAND_CTL_SETNCE = common dso_local global i32 0, align 4
@NAND_CTL_CLRALE = common dso_local global i32 0, align 4
@NAND_CTL_CLRNCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32, i32, i32)* @au1550_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1550_command(%struct.mtd_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nand_chip*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %15 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %14, i32 0, i32 1
  %16 = load %struct.nand_chip*, %struct.nand_chip** %15, align 8
  store %struct.nand_chip* %16, %struct.nand_chip** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %18 = load i32, i32* @NAND_CTL_SETCLE, align 4
  %19 = call i32 @au1550_hwcontrol(%struct.mtd_info* %17, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 129
  br i1 %21, label %22, label %46

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %25 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sge i32 %23, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %30 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 %32, %31
  store i32 %33, i32* %7, align 4
  store i32 131, i32* %13, align 4
  br label %42

34:                                               ; preds = %22
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 256
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 133, i32* %13, align 4
  br label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %39, 256
  store i32 %40, i32* %7, align 4
  store i32 132, i32* %13, align 4
  br label %41

41:                                               ; preds = %38, %37
  br label %42

42:                                               ; preds = %41, %28
  %43 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @au1550_write_byte(%struct.mtd_info* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %4
  %47 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @au1550_write_byte(%struct.mtd_info* %47, i32 %48)
  %50 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %51 = load i32, i32* @NAND_CTL_CLRCLE, align 4
  %52 = call i32 @au1550_hwcontrol(%struct.mtd_info* %50, i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %58, label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %120

58:                                               ; preds = %55, %46
  %59 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %60 = load i32, i32* @NAND_CTL_SETALE, align 4
  %61 = call i32 @au1550_hwcontrol(%struct.mtd_info* %59, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, -1
  br i1 %63, label %64, label %78

64:                                               ; preds = %58
  %65 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %66 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i32, i32* %7, align 4
  %73 = ashr i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %71, %64
  %75 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @au1550_write_byte(%struct.mtd_info* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %58
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, -1
  br i1 %80, label %81, label %116

81:                                               ; preds = %78
  %82 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, 255
  %85 = call i32 @au1550_write_byte(%struct.mtd_info* %82, i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = icmp eq i32 %86, 133
  br i1 %87, label %94, label %88

88:                                               ; preds = %81
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %89, 132
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %6, align 4
  %93 = icmp eq i32 %92, 131
  br i1 %93, label %94, label %100

94:                                               ; preds = %91, %88, %81
  store i32 1, i32* %10, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @local_irq_save(i32 %95)
  %97 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %98 = load i32, i32* @NAND_CTL_SETNCE, align 4
  %99 = call i32 @au1550_hwcontrol(%struct.mtd_info* %97, i32 %98)
  br label %100

100:                                              ; preds = %94, %91
  %101 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %102 = load i32, i32* %8, align 4
  %103 = ashr i32 %102, 8
  %104 = call i32 @au1550_write_byte(%struct.mtd_info* %101, i32 %103)
  %105 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %106 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp sgt i32 %107, 33554432
  br i1 %108, label %109, label %115

109:                                              ; preds = %100
  %110 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %111 = load i32, i32* %8, align 4
  %112 = ashr i32 %111, 16
  %113 = and i32 %112, 15
  %114 = call i32 @au1550_write_byte(%struct.mtd_info* %110, i32 %113)
  br label %115

115:                                              ; preds = %109, %100
  br label %116

116:                                              ; preds = %115, %78
  %117 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %118 = load i32, i32* @NAND_CTL_CLRALE, align 4
  %119 = call i32 @au1550_hwcontrol(%struct.mtd_info* %117, i32 %118)
  br label %120

120:                                              ; preds = %116, %55
  %121 = load i32, i32* %6, align 4
  switch i32 %121, label %161 [
    i32 134, label %122
    i32 136, label %122
    i32 135, label %122
    i32 129, label %122
    i32 128, label %122
    i32 130, label %123
    i32 133, label %124
    i32 132, label %124
    i32 131, label %124
  ]

122:                                              ; preds = %120, %120, %120, %120, %120
  br label %173

123:                                              ; preds = %120
  br label %161

124:                                              ; preds = %120, %120, %120
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = call i32 @unlikely(i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  br label %161

132:                                              ; preds = %124
  %133 = call i32 @ndelay(i32 100)
  %134 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %135 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  store i32 %136, i32* %11, align 4
  br label %137

137:                                              ; preds = %152, %132
  %138 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %139 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %138, i32 0, i32 3
  %140 = load i32 (%struct.mtd_info.0*)*, i32 (%struct.mtd_info.0*)** %139, align 8
  %141 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %142 = bitcast %struct.mtd_info* %141 to %struct.mtd_info.0*
  %143 = call i32 %140(%struct.mtd_info.0* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %137
  %146 = load i32, i32* %11, align 4
  %147 = icmp sgt i32 %146, 0
  br label %148

148:                                              ; preds = %145, %137
  %149 = phi i1 [ false, %137 ], [ %147, %145 ]
  br i1 %149, label %150, label %155

150:                                              ; preds = %148
  %151 = call i32 @udelay(i32 1)
  br label %152

152:                                              ; preds = %150
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %11, align 4
  br label %137

155:                                              ; preds = %148
  %156 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %157 = load i32, i32* @NAND_CTL_CLRNCE, align 4
  %158 = call i32 @au1550_hwcontrol(%struct.mtd_info* %156, i32 %157)
  %159 = load i32, i32* %12, align 4
  %160 = call i32 @local_irq_restore(i32 %159)
  br label %173

161:                                              ; preds = %120, %131, %123
  %162 = call i32 @ndelay(i32 100)
  br label %163

163:                                              ; preds = %172, %161
  %164 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %165 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %164, i32 0, i32 3
  %166 = load i32 (%struct.mtd_info.0*)*, i32 (%struct.mtd_info.0*)** %165, align 8
  %167 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %168 = bitcast %struct.mtd_info* %167 to %struct.mtd_info.0*
  %169 = call i32 %166(%struct.mtd_info.0* %168)
  %170 = icmp ne i32 %169, 0
  %171 = xor i1 %170, true
  br i1 %171, label %172, label %173

172:                                              ; preds = %163
  br label %163

173:                                              ; preds = %122, %155, %163
  ret void
}

declare dso_local i32 @au1550_hwcontrol(%struct.mtd_info*, i32) #1

declare dso_local i32 @au1550_write_byte(%struct.mtd_info*, i32) #1

declare dso_local i32 @local_irq_save(i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @local_irq_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
