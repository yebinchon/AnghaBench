; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_dp_dmae.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_dp_dmae.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.dmae_command = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DMAE_COMMAND_SRC = common dso_local global i32 0, align 4
@DMAE_COMMAND_DST = common dso_local global i32 0, align 4
@DMAE_CMD_SRC_PCI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [99 x i8] c"DMAE: opcode 0x%08x\0Asrc [%x:%08x], len [%d*4], dst [%x:%08x]\0Acomp_addr [%x:%08x], comp_val 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [96 x i8] c"DMAE: opcode 0x%08x\0Asrc [%08x], len [%d*4], dst [%x:%08x]\0Acomp_addr [%x:%08x], comp_val 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [101 x i8] c"DMAE: opcode 0x%08x\0Asrc [%x:%08x], len [%d*4], dst_addr [%08x]\0Acomp_addr [%x:%08x], comp_val 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [93 x i8] c"DMAE: opcode 0x%08x\0Asrc [%08x], len [%d*4], dst [%08x]\0Acomp_addr [%x:%08x], comp_val 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [108 x i8] c"DMAE: opcode 0x%08x\0Asrc_addr [%x:%08x]  len [%d * 4]  dst_addr [none]\0Acomp_addr [%x:%08x]  comp_val 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [105 x i8] c"DMAE: opcode 0x%08x\0Asrc_addr [%08x]  len [%d * 4]  dst_addr [none]\0Acomp_addr [%x:%08x]  comp_val 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"DMAE RAW [%02d]: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.dmae_command*, i32)* @bnx2x_dp_dmae to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_dp_dmae(%struct.bnx2x* %0, %struct.dmae_command* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.dmae_command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.dmae_command* %1, %struct.dmae_command** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %10 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DMAE_COMMAND_SRC, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %15 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DMAE_COMMAND_DST, align 4
  %18 = and i32 %16, %17
  switch i32 %18, label %141 [
    i32 128, label %19
    i32 129, label %82
  ]

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @DMAE_CMD_SRC_PCI, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %26 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %29 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %32 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %35 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %38 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %41 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %44 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %47 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %50 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i8*, i32, i32, ...) @DP(i32 %24, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30, i32 %33, i32 %36, i32 %39, i32 %42, i32 %45, i32 %48, i32 %51)
  br label %81

53:                                               ; preds = %19
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %56 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %59 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 2
  %62 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %63 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %66 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %69 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %72 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %75 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %78 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i32, i8*, i32, i32, ...) @DP(i32 %54, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %61, i32 %64, i32 %67, i32 %70, i32 %73, i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %53, %23
  br label %192

82:                                               ; preds = %3
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @DMAE_CMD_SRC_PCI, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %114

86:                                               ; preds = %82
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %89 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %92 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %95 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %98 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %101 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = ashr i32 %102, 2
  %104 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %105 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %108 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %111 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i32, i8*, i32, i32, ...) @DP(i32 %87, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %93, i32 %96, i32 %99, i32 %103, i32 %106, i32 %109, i32 %112)
  br label %140

114:                                              ; preds = %82
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %117 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %120 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = ashr i32 %121, 2
  %123 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %124 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %127 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = ashr i32 %128, 2
  %130 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %131 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %134 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %137 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i32, i8*, i32, i32, ...) @DP(i32 %115, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.3, i64 0, i64 0), i32 %118, i32 %122, i32 %125, i32 %129, i32 %132, i32 %135, i32 %138)
  br label %140

140:                                              ; preds = %114, %86
  br label %192

141:                                              ; preds = %3
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* @DMAE_CMD_SRC_PCI, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %169

145:                                              ; preds = %141
  %146 = load i32, i32* %6, align 4
  %147 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %148 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %151 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %154 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %157 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %160 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %163 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %166 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (i32, i8*, i32, i32, ...) @DP(i32 %146, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.4, i64 0, i64 0), i32 %149, i32 %152, i32 %155, i32 %158, i32 %161, i32 %164, i32 %167)
  br label %191

169:                                              ; preds = %141
  %170 = load i32, i32* %6, align 4
  %171 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %172 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %175 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = ashr i32 %176, 2
  %178 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %179 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %178, i32 0, i32 6
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %182 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %185 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %188 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = call i32 (i32, i8*, i32, i32, ...) @DP(i32 %170, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.5, i64 0, i64 0), i32 %173, i32 %177, i32 %180, i32 %183, i32 %186, i32 %189)
  br label %191

191:                                              ; preds = %169, %145
  br label %192

192:                                              ; preds = %191, %140, %81
  store i32 0, i32* %8, align 4
  br label %193

193:                                              ; preds = %207, %192
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = icmp ult i64 %195, 9
  br i1 %196, label %197, label %210

197:                                              ; preds = %193
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* %8, align 4
  %200 = load %struct.dmae_command*, %struct.dmae_command** %5, align 8
  %201 = bitcast %struct.dmae_command* %200 to i32*
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (i32, i8*, i32, i32, ...) @DP(i32 %198, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %199, i32 %205)
  br label %207

207:                                              ; preds = %197
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %8, align 4
  br label %193

210:                                              ; preds = %193
  ret void
}

declare dso_local i32 @DP(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
