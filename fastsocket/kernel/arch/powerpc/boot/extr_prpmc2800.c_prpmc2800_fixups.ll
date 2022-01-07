; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_prpmc2800.c_prpmc2800_fixups.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_prpmc2800.c_prpmc2800_fixups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prpmc2800_board_info = type { i8, i64, i8, i8, i64, i8 }

@BOARD_MODEL_MAX = common dso_local global i32 0, align 4
@bridge_base = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Error: Missing '/' device tree node\0A\0D\00", align 1
@BOARD_MODEL = common dso_local global i32 0, align 4
@BOARD_MODEL_PRPMC280 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Error: Missing proper cpu device tree node\0A\0D\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"/memory\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Error: Missing /memory device tree node\0A\0D\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@BRIDGE_TYPE_MV64362 = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"marvell,mv64360\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"Error: Missing marvell,mv64360 device tree node\0A\0D\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"mv64362\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"direct-mapped\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"Error: Missing User FLASH device tree node\0A\0D\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"Error: Can't find User FLASH reg property\0A\0D\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @prpmc2800_fixups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prpmc2800_fixups() #0 {
  %1 = alloca [2 x i8], align 1
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.prpmc2800_board_info*, align 8
  %9 = alloca i32, align 4
  %10 = load i32, i32* @BOARD_MODEL_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = call %struct.prpmc2800_board_info* (...) @prpmc2800_get_bip()
  store %struct.prpmc2800_board_info* %14, %struct.prpmc2800_board_info** %8, align 8
  %15 = load %struct.prpmc2800_board_info*, %struct.prpmc2800_board_info** %8, align 8
  %16 = icmp ne %struct.prpmc2800_board_info* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %0
  %18 = load %struct.prpmc2800_board_info*, %struct.prpmc2800_board_info** %8, align 8
  %19 = getelementptr inbounds %struct.prpmc2800_board_info, %struct.prpmc2800_board_info* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 8
  %21 = sext i8 %20 to i32
  br label %26

22:                                               ; preds = %0
  %23 = load i32, i32* @bridge_base, align 4
  %24 = call signext i8 @mv64x60_get_mem_size(i32 %23)
  %25 = sext i8 %24 to i32
  br label %26

26:                                               ; preds = %22, %17
  %27 = phi i32 [ %21, %17 ], [ %25, %22 ]
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %3, align 1
  %29 = load i8, i8* %3, align 1
  %30 = call i32 @prpmc2800_bridge_setup(i8 signext %29)
  %31 = load %struct.prpmc2800_board_info*, %struct.prpmc2800_board_info** %8, align 8
  %32 = icmp ne %struct.prpmc2800_board_info* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i32 1, i32* %9, align 4
  br label %139

34:                                               ; preds = %26
  %35 = call i8* @finddevice(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %35, i8** %5, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 @fatal(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i32, i32* @BOARD_MODEL_MAX, align 4
  %42 = call i32 @memset(i8* %13, i32 0, i32 %41)
  %43 = load i32, i32* @BOARD_MODEL, align 4
  %44 = load i32, i32* @BOARD_MODEL_MAX, align 4
  %45 = sub nsw i32 %44, 2
  %46 = call i32 @strncpy(i8* %13, i32 %43, i32 %45)
  %47 = call signext i8 @strlen(i8* %13)
  store i8 %47, i8* %2, align 1
  %48 = load %struct.prpmc2800_board_info*, %struct.prpmc2800_board_info** %8, align 8
  %49 = getelementptr inbounds %struct.prpmc2800_board_info, %struct.prpmc2800_board_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @BOARD_MODEL_PRPMC280, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %40
  %54 = load i8, i8* %2, align 1
  %55 = add i8 %54, -1
  store i8 %55, i8* %2, align 1
  br label %56

56:                                               ; preds = %53, %40
  %57 = load %struct.prpmc2800_board_info*, %struct.prpmc2800_board_info** %8, align 8
  %58 = getelementptr inbounds %struct.prpmc2800_board_info, %struct.prpmc2800_board_info* %57, i32 0, i32 2
  %59 = load i8, i8* %58, align 8
  %60 = load i8, i8* %2, align 1
  %61 = add i8 %60, 1
  store i8 %61, i8* %2, align 1
  %62 = sext i8 %60 to i64
  %63 = getelementptr inbounds i8, i8* %13, i64 %62
  store i8 %59, i8* %63, align 1
  %64 = load i8, i8* %2, align 1
  %65 = add i8 %64, 1
  store i8 %65, i8* %2, align 1
  %66 = sext i8 %64 to i64
  %67 = getelementptr inbounds i8, i8* %13, i64 %66
  store i8 0, i8* %67, align 1
  %68 = load i8*, i8** %5, align 8
  %69 = load i8, i8* %2, align 1
  %70 = sext i8 %69 to i32
  %71 = call i32 @setprop(i8* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %13, i32 %70)
  %72 = call i8* @find_node_by_prop_value_str(i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i8* %72, i8** %5, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %56
  %76 = call i32 @fatal(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %56
  %78 = load %struct.prpmc2800_board_info*, %struct.prpmc2800_board_info** %8, align 8
  %79 = getelementptr inbounds %struct.prpmc2800_board_info, %struct.prpmc2800_board_info* %78, i32 0, i32 3
  %80 = load i8, i8* %79, align 1
  %81 = getelementptr inbounds [2 x i8], [2 x i8]* %1, i64 0, i64 0
  store i8 %80, i8* %81, align 1
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds [2 x i8], [2 x i8]* %1, i64 0, i64 0
  %84 = call i32 @setprop(i8* %82, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %83, i32 1)
  %85 = call i8* @finddevice(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i8* %85, i8** %5, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %77
  %89 = call i32 @fatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %77
  %91 = getelementptr inbounds [2 x i8], [2 x i8]* %1, i64 0, i64 0
  store i8 0, i8* %91, align 1
  %92 = load %struct.prpmc2800_board_info*, %struct.prpmc2800_board_info** %8, align 8
  %93 = getelementptr inbounds %struct.prpmc2800_board_info, %struct.prpmc2800_board_info* %92, i32 0, i32 0
  %94 = load i8, i8* %93, align 8
  %95 = getelementptr inbounds [2 x i8], [2 x i8]* %1, i64 0, i64 1
  store i8 %94, i8* %95, align 1
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr inbounds [2 x i8], [2 x i8]* %1, i64 0, i64 0
  %98 = call i32 @setprop(i8* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %97, i32 2)
  %99 = load %struct.prpmc2800_board_info*, %struct.prpmc2800_board_info** %8, align 8
  %100 = getelementptr inbounds %struct.prpmc2800_board_info, %struct.prpmc2800_board_info* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @BRIDGE_TYPE_MV64362, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %116

104:                                              ; preds = %90
  %105 = call i8* @find_node_by_compatible(i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  store i8* %105, i8** %5, align 8
  %106 = load i8*, i8** %5, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = call i32 @fatal(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %104
  %111 = load i8*, i8** %5, align 8
  %112 = call signext i8 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %113 = sext i8 %112 to i32
  %114 = add nsw i32 %113, 1
  %115 = call i32 @setprop(i8* %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %110, %90
  %117 = call i8* @find_node_by_compatible(i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  store i8* %117, i8** %5, align 8
  %118 = load i8*, i8** %5, align 8
  %119 = icmp eq i8* %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = call i32 @fatal(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %116
  %123 = load i8*, i8** %5, align 8
  %124 = getelementptr inbounds [2 x i8], [2 x i8]* %1, i64 0, i64 0
  %125 = call i32 @getprop(i8* %123, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %124, i32 2)
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = icmp ne i64 %127, 2
  br i1 %128, label %129, label %131

129:                                              ; preds = %122
  %130 = call i32 @fatal(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %122
  %132 = load %struct.prpmc2800_board_info*, %struct.prpmc2800_board_info** %8, align 8
  %133 = getelementptr inbounds %struct.prpmc2800_board_info, %struct.prpmc2800_board_info* %132, i32 0, i32 5
  %134 = load i8, i8* %133, align 8
  %135 = getelementptr inbounds [2 x i8], [2 x i8]* %1, i64 0, i64 1
  store i8 %134, i8* %135, align 1
  %136 = load i8*, i8** %5, align 8
  %137 = getelementptr inbounds [2 x i8], [2 x i8]* %1, i64 0, i64 0
  %138 = call i32 @setprop(i8* %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %137, i32 2)
  store i32 0, i32* %9, align 4
  br label %139

139:                                              ; preds = %131, %33
  %140 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %140)
  %141 = load i32, i32* %9, align 4
  switch i32 %141, label %143 [
    i32 0, label %142
    i32 1, label %142
  ]

142:                                              ; preds = %139, %139
  ret void

143:                                              ; preds = %139
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.prpmc2800_board_info* @prpmc2800_get_bip(...) #2

declare dso_local signext i8 @mv64x60_get_mem_size(i32) #2

declare dso_local i32 @prpmc2800_bridge_setup(i8 signext) #2

declare dso_local i8* @finddevice(i8*) #2

declare dso_local i32 @fatal(i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @strncpy(i8*, i32, i32) #2

declare dso_local signext i8 @strlen(i8*) #2

declare dso_local i32 @setprop(i8*, i8*, i8*, i32) #2

declare dso_local i8* @find_node_by_prop_value_str(i32*, i8*, i8*) #2

declare dso_local i8* @find_node_by_compatible(i32*, i8*) #2

declare dso_local i32 @getprop(i8*, i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
