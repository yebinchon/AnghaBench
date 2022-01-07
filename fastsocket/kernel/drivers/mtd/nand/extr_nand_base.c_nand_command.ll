; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, %struct.nand_chip* }
%struct.nand_chip = type { i32, i32, i32 (%struct.mtd_info.0*)*, i32, i32, i32 (%struct.mtd_info.1*, i32, i32)* }
%struct.mtd_info.0 = type opaque
%struct.mtd_info.1 = type opaque

@NAND_CTRL_CLE = common dso_local global i32 0, align 4
@NAND_CTRL_CHANGE = common dso_local global i32 0, align 4
@NAND_CMD_READOOB = common dso_local global i32 0, align 4
@NAND_CMD_READ0 = common dso_local global i32 0, align 4
@NAND_CMD_READ1 = common dso_local global i32 0, align 4
@NAND_CTRL_ALE = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@NAND_CMD_NONE = common dso_local global i32 0, align 4
@NAND_NCE = common dso_local global i32 0, align 4
@NAND_STATUS_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32, i32, i32)* @nand_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nand_command(%struct.mtd_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nand_chip*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %13 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %12, i32 0, i32 1
  %14 = load %struct.nand_chip*, %struct.nand_chip** %13, align 8
  store %struct.nand_chip* %14, %struct.nand_chip** %9, align 8
  %15 = load i32, i32* @NAND_CTRL_CLE, align 4
  %16 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 129
  br i1 %19, label %20, label %56

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %23 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %21, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %28 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sub nsw i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @NAND_CMD_READOOB, align 4
  store i32 %32, i32* %11, align 4
  br label %43

33:                                               ; preds = %20
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 256
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @NAND_CMD_READ0, align 4
  store i32 %37, i32* %11, align 4
  br label %42

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %39, 256
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* @NAND_CMD_READ1, align 4
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %38, %36
  br label %43

43:                                               ; preds = %42, %26
  %44 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %45 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %44, i32 0, i32 5
  %46 = load i32 (%struct.mtd_info.1*, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32)** %45, align 8
  %47 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %48 = bitcast %struct.mtd_info* %47 to %struct.mtd_info.1*
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 %46(%struct.mtd_info.1* %48, i32 %49, i32 %50)
  %52 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %10, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %43, %4
  %57 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %58 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %57, i32 0, i32 5
  %59 = load i32 (%struct.mtd_info.1*, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32)** %58, align 8
  %60 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %61 = bitcast %struct.mtd_info* %60 to %struct.mtd_info.1*
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 %59(%struct.mtd_info.1* %61, i32 %62, i32 %63)
  %65 = load i32, i32* @NAND_CTRL_ALE, align 4
  %66 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, -1
  br i1 %69, label %70, label %93

70:                                               ; preds = %56
  %71 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %72 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32, i32* %7, align 4
  %79 = ashr i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %77, %70
  %81 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %82 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %81, i32 0, i32 5
  %83 = load i32 (%struct.mtd_info.1*, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32)** %82, align 8
  %84 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %85 = bitcast %struct.mtd_info* %84 to %struct.mtd_info.1*
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 %83(%struct.mtd_info.1* %85, i32 %86, i32 %87)
  %89 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %10, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %80, %56
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, -1
  br i1 %95, label %96, label %133

96:                                               ; preds = %93
  %97 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %98 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %97, i32 0, i32 5
  %99 = load i32 (%struct.mtd_info.1*, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32)** %98, align 8
  %100 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %101 = bitcast %struct.mtd_info* %100 to %struct.mtd_info.1*
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %10, align 4
  %104 = call i32 %99(%struct.mtd_info.1* %101, i32 %102, i32 %103)
  %105 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %10, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %10, align 4
  %109 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %110 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %109, i32 0, i32 5
  %111 = load i32 (%struct.mtd_info.1*, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32)** %110, align 8
  %112 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %113 = bitcast %struct.mtd_info* %112 to %struct.mtd_info.1*
  %114 = load i32, i32* %8, align 4
  %115 = ashr i32 %114, 8
  %116 = load i32, i32* %10, align 4
  %117 = call i32 %111(%struct.mtd_info.1* %113, i32 %115, i32 %116)
  %118 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %119 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp sgt i32 %120, 33554432
  br i1 %121, label %122, label %132

122:                                              ; preds = %96
  %123 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %124 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %123, i32 0, i32 5
  %125 = load i32 (%struct.mtd_info.1*, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32)** %124, align 8
  %126 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %127 = bitcast %struct.mtd_info* %126 to %struct.mtd_info.1*
  %128 = load i32, i32* %8, align 4
  %129 = ashr i32 %128, 16
  %130 = load i32, i32* %10, align 4
  %131 = call i32 %125(%struct.mtd_info.1* %127, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %122, %96
  br label %133

133:                                              ; preds = %132, %93
  %134 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %135 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %134, i32 0, i32 5
  %136 = load i32 (%struct.mtd_info.1*, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32)** %135, align 8
  %137 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %138 = bitcast %struct.mtd_info* %137 to %struct.mtd_info.1*
  %139 = load i32, i32* @NAND_CMD_NONE, align 4
  %140 = load i32, i32* @NAND_NCE, align 4
  %141 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %142 = or i32 %140, %141
  %143 = call i32 %136(%struct.mtd_info.1* %138, i32 %139, i32 %142)
  %144 = load i32, i32* %6, align 4
  switch i32 %144, label %189 [
    i32 131, label %145
    i32 133, label %145
    i32 132, label %145
    i32 129, label %145
    i32 128, label %145
    i32 130, label %146
  ]

145:                                              ; preds = %133, %133, %133, %133, %133
  br label %204

146:                                              ; preds = %133
  %147 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %148 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %200

152:                                              ; preds = %146
  %153 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %154 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @udelay(i32 %155)
  %157 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %158 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %157, i32 0, i32 5
  %159 = load i32 (%struct.mtd_info.1*, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32)** %158, align 8
  %160 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %161 = bitcast %struct.mtd_info* %160 to %struct.mtd_info.1*
  %162 = load i32, i32* @NAND_CTRL_CLE, align 4
  %163 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %164 = or i32 %162, %163
  %165 = call i32 %159(%struct.mtd_info.1* %161, i32 128, i32 %164)
  %166 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %167 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %166, i32 0, i32 5
  %168 = load i32 (%struct.mtd_info.1*, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32)** %167, align 8
  %169 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %170 = bitcast %struct.mtd_info* %169 to %struct.mtd_info.1*
  %171 = load i32, i32* @NAND_CMD_NONE, align 4
  %172 = load i32, i32* @NAND_NCE, align 4
  %173 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %174 = or i32 %172, %173
  %175 = call i32 %168(%struct.mtd_info.1* %170, i32 %171, i32 %174)
  br label %176

176:                                              ; preds = %187, %152
  %177 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %178 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %177, i32 0, i32 2
  %179 = load i32 (%struct.mtd_info.0*)*, i32 (%struct.mtd_info.0*)** %178, align 8
  %180 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %181 = bitcast %struct.mtd_info* %180 to %struct.mtd_info.0*
  %182 = call i32 %179(%struct.mtd_info.0* %181)
  %183 = load i32, i32* @NAND_STATUS_READY, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  %186 = xor i1 %185, true
  br i1 %186, label %187, label %188

187:                                              ; preds = %176
  br label %176

188:                                              ; preds = %176
  br label %204

189:                                              ; preds = %133
  %190 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %191 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %189
  %195 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %196 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @udelay(i32 %197)
  br label %204

199:                                              ; preds = %189
  br label %200

200:                                              ; preds = %199, %151
  %201 = call i32 @ndelay(i32 100)
  %202 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %203 = call i32 @nand_wait_ready(%struct.mtd_info* %202)
  br label %204

204:                                              ; preds = %200, %194, %188, %145
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @nand_wait_ready(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
