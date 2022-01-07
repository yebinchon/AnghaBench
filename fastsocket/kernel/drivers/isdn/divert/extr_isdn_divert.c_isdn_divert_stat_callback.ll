; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/divert/extr_isdn_divert.c_isdn_divert_stat_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/divert/extr_isdn_divert.c_isdn_divert_stat_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.call_struc = type { %struct.TYPE_8__*, %struct.call_struc*, %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.call_struc* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64, i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@divert_head = common dso_local global %struct.call_struc* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"129 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"130 0x%lx %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"131 0x%lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"999 0x%lx 0x%x\0A\00", align 1
@divert_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @isdn_divert_stat_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isdn_divert_stat_callback(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.call_struc*, align 8
  %4 = alloca %struct.call_struc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i32 -1, i32* %6, align 4
  %7 = load %struct.call_struc*, %struct.call_struc** @divert_head, align 8
  store %struct.call_struc* %7, %struct.call_struc** %3, align 8
  br label %8

8:                                                ; preds = %136, %1
  %9 = load %struct.call_struc*, %struct.call_struc** %3, align 8
  %10 = icmp ne %struct.call_struc* %9, null
  br i1 %10, label %11, label %137

11:                                               ; preds = %8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.call_struc*, %struct.call_struc** %3, align 8
  %16 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %14, %18
  br i1 %19, label %20, label %89

20:                                               ; preds = %11
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.call_struc*, %struct.call_struc** %3, align 8
  %25 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %23, %27
  br i1 %28, label %29, label %89

29:                                               ; preds = %20
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %73 [
    i32 129, label %33
    i32 130, label %47
    i32 128, label %59
  ]

33:                                               ; preds = %29
  %34 = load %struct.call_struc*, %struct.call_struc** %3, align 8
  %35 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.call_struc*, %struct.call_struc** %3, align 8
  %38 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, i32, ...) @sprintf(i32 %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.call_struc*, %struct.call_struc** %3, align 8
  %42 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %41, i32 0, i32 5
  %43 = call i32 @del_timer(i32* %42)
  %44 = load %struct.call_struc*, %struct.call_struc** %3, align 8
  %45 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i64 -1, i64* %46, align 8
  br label %84

47:                                               ; preds = %29
  %48 = load %struct.call_struc*, %struct.call_struc** %3, align 8
  %49 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.call_struc*, %struct.call_struc** %3, align 8
  %52 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, i32, ...) @sprintf(i32 %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %57)
  br label %84

59:                                               ; preds = %29
  %60 = load %struct.call_struc*, %struct.call_struc** %3, align 8
  %61 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.call_struc*, %struct.call_struc** %3, align 8
  %64 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i8*, i32, ...) @sprintf(i32 %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load %struct.call_struc*, %struct.call_struc** %3, align 8
  %68 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %67, i32 0, i32 5
  %69 = call i32 @del_timer(i32* %68)
  %70 = load %struct.call_struc*, %struct.call_struc** %3, align 8
  %71 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  store i64 -1, i64* %72, align 8
  br label %84

73:                                               ; preds = %29
  %74 = load %struct.call_struc*, %struct.call_struc** %3, align 8
  %75 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.call_struc*, %struct.call_struc** %3, align 8
  %78 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i32, i8*, i32, ...) @sprintf(i32 %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %73, %59, %47, %33
  %85 = load %struct.call_struc*, %struct.call_struc** %3, align 8
  %86 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @put_info_buffer(i32 %87)
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %84, %20, %11
  %90 = load %struct.call_struc*, %struct.call_struc** %3, align 8
  store %struct.call_struc* %90, %struct.call_struc** %4, align 8
  %91 = load %struct.call_struc*, %struct.call_struc** %3, align 8
  %92 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %91, i32 0, i32 1
  %93 = load %struct.call_struc*, %struct.call_struc** %92, align 8
  store %struct.call_struc* %93, %struct.call_struc** %3, align 8
  %94 = load %struct.call_struc*, %struct.call_struc** %4, align 8
  %95 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, -1
  br i1 %98, label %99, label %136

99:                                               ; preds = %89
  %100 = load i64, i64* %5, align 8
  %101 = call i32 @spin_lock_irqsave(i32* @divert_lock, i64 %100)
  %102 = load %struct.call_struc*, %struct.call_struc** %4, align 8
  %103 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = icmp ne %struct.TYPE_8__* %104, null
  br i1 %105, label %106, label %114

106:                                              ; preds = %99
  %107 = load %struct.call_struc*, %struct.call_struc** %4, align 8
  %108 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %107, i32 0, i32 1
  %109 = load %struct.call_struc*, %struct.call_struc** %108, align 8
  %110 = load %struct.call_struc*, %struct.call_struc** %4, align 8
  %111 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  store %struct.call_struc* %109, %struct.call_struc** %113, align 8
  br label %118

114:                                              ; preds = %99
  %115 = load %struct.call_struc*, %struct.call_struc** %4, align 8
  %116 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %115, i32 0, i32 1
  %117 = load %struct.call_struc*, %struct.call_struc** %116, align 8
  store %struct.call_struc* %117, %struct.call_struc** @divert_head, align 8
  br label %118

118:                                              ; preds = %114, %106
  %119 = load %struct.call_struc*, %struct.call_struc** %4, align 8
  %120 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %119, i32 0, i32 1
  %121 = load %struct.call_struc*, %struct.call_struc** %120, align 8
  %122 = icmp ne %struct.call_struc* %121, null
  br i1 %122, label %123, label %131

123:                                              ; preds = %118
  %124 = load %struct.call_struc*, %struct.call_struc** %4, align 8
  %125 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %124, i32 0, i32 0
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = load %struct.call_struc*, %struct.call_struc** %4, align 8
  %128 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %127, i32 0, i32 1
  %129 = load %struct.call_struc*, %struct.call_struc** %128, align 8
  %130 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %129, i32 0, i32 0
  store %struct.TYPE_8__* %126, %struct.TYPE_8__** %130, align 8
  br label %131

131:                                              ; preds = %123, %118
  %132 = load i64, i64* %5, align 8
  %133 = call i32 @spin_unlock_irqrestore(i32* @divert_lock, i64 %132)
  %134 = load %struct.call_struc*, %struct.call_struc** %4, align 8
  %135 = call i32 @kfree(%struct.call_struc* %134)
  br label %136

136:                                              ; preds = %131, %89
  br label %8

137:                                              ; preds = %8
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i32 @sprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @put_info_buffer(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.call_struc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
