; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_get_plci.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_get_plci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64*, i64, i64, i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i8*, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i8*, i32*, i32*, i64, i64, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"get_plci: out of PLCIs\00", align 1
@IDLE = common dso_local global i8* null, align 8
@MSG_IN_QUEUE_SIZE = common dso_local global i8* null, align 8
@CALL_DIR_OUT = common dso_local global i32 0, align 4
@CALL_DIR_ORIGINATE = common dso_local global i32 0, align 4
@MAX_CHANNELS_PER_PLCI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"get_plci(%x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*)* @get_plci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_plci(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %8 = call i32 @dump_plcis(%struct.TYPE_14__* %7)
  store i64 0, i64* %4, align 8
  br label %9

9:                                                ; preds = %27, %1
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %15, %9
  %25 = phi i1 [ false, %9 ], [ %23, %15 ]
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  br label %27

27:                                               ; preds = %26
  %28 = load i64, i64* %4, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %4, align 8
  br label %9

30:                                               ; preds = %24
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %38 = call i32 @dbug(i32 1, i32 %37)
  store i64 0, i64* %2, align 8
  br label %182

39:                                               ; preds = %30
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i64 %43
  store %struct.TYPE_13__* %44, %struct.TYPE_13__** %6, align 8
  %45 = load i64, i64* %4, align 8
  %46 = add i64 %45, 1
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 5
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 47
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 46
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 45
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 44
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 43
  store i32* null, i32** %60, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 42
  store i32* null, i32** %62, align 8
  %63 = load i8*, i8** @IDLE, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 41
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** @IDLE, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 40
  store i8* %66, i8** %68, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 39
  store i64 0, i64* %70, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 38
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 37
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 36
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 35
  store i64 0, i64* %78, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 34
  store i64 0, i64* %80, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 33
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %84 = call i32 @init_internal_command_queue(%struct.TYPE_13__* %83)
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 32
  store i64 0, i64* %86, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 31
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 30
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 29
  store i64 0, i64* %92, align 8
  %93 = load i8*, i8** @MSG_IN_QUEUE_SIZE, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 28
  store i8* %93, i8** %95, align 8
  %96 = load i8*, i8** @MSG_IN_QUEUE_SIZE, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 27
  store i8* %96, i8** %98, align 8
  %99 = load i8*, i8** @MSG_IN_QUEUE_SIZE, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 26
  store i8* %99, i8** %101, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  store i32 0, i32* %103, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 25
  store i64 0, i64* %105, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 24
  store i64 0, i64* %107, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 23
  store i64 0, i64* %109, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 22
  store i64 0, i64* %111, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 21
  store i64 0, i64* %113, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 20
  store i64 0, i64* %115, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  store i32 0, i32* %117, align 4
  %118 = load i32, i32* @CALL_DIR_OUT, align 4
  %119 = load i32, i32* @CALL_DIR_ORIGINATE, align 4
  %120 = or i32 %118, %119
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 19
  store i64 0, i64* %124, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 18
  store i64 0, i64* %126, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 3
  store i32 0, i32* %128, align 4
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 17
  store i64 0, i64* %130, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 16
  store i64 0, i64* %132, align 8
  store i64 0, i64* %5, align 8
  br label %133

133:                                              ; preds = %143, %39
  %134 = load i64, i64* %5, align 8
  %135 = load i64, i64* @MAX_CHANNELS_PER_PLCI, align 8
  %136 = icmp ult i64 %134, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %133
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 15
  %140 = load i64*, i64** %139, align 8
  %141 = load i64, i64* %5, align 8
  %142 = getelementptr inbounds i64, i64* %140, i64 %141
  store i64 0, i64* %142, align 8
  br label %143

143:                                              ; preds = %137
  %144 = load i64, i64* %5, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %5, align 8
  br label %133

146:                                              ; preds = %133
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %148 = call i32 @clear_c_ind_mask(%struct.TYPE_13__* %147)
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %150 = call i32 @set_group_ind_mask(%struct.TYPE_13__* %149)
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 14
  store i64 0, i64* %152, align 8
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 13
  store i64 0, i64* %154, align 8
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 4
  store i32 0, i32* %156, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 12
  %159 = load i64*, i64** %158, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 0
  store i64 0, i64* %160, align 8
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 11
  store i64 0, i64* %162, align 8
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 10
  store i64 0, i64* %164, align 8
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 9
  store i64 0, i64* %166, align 8
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 8
  store i64 0, i64* %168, align 8
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 7
  store i64 0, i64* %170, align 8
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 6
  store i64 0, i64* %172, align 8
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %174 = call i32 @init_b1_config(%struct.TYPE_13__* %173)
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 5
  %177 = load i64, i64* %176, align 8
  %178 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %177)
  %179 = call i32 @dbug(i32 1, i32 %178)
  %180 = load i64, i64* %4, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %2, align 8
  br label %182

182:                                              ; preds = %146, %36
  %183 = load i64, i64* %2, align 8
  ret i64 %183
}

declare dso_local i32 @dump_plcis(%struct.TYPE_14__*) #1

declare dso_local i32 @dbug(i32, i32) #1

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i32 @init_internal_command_queue(%struct.TYPE_13__*) #1

declare dso_local i32 @clear_c_ind_mask(%struct.TYPE_13__*) #1

declare dso_local i32 @set_group_ind_mask(%struct.TYPE_13__*) #1

declare dso_local i32 @init_b1_config(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
