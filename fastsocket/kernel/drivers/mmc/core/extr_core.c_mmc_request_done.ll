; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_core.c_mmc_request_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_core.c_mmc_request_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.mmc_host*, %struct.mmc_request*)* }
%struct.mmc_request = type { i32 (%struct.mmc_request*)*, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.mmc_command* }
%struct.TYPE_6__ = type { i32, i32*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.mmc_command = type { i32, i32*, i32, i64 }

@R1_SPI_ILLEGAL_COMMAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: req failed (CMD%u): %d, retrying...\0A\00", align 1
@LED_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"%s: req done (CMD%u): %d: %08x %08x %08x %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s:     %d bytes transferred: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"%s:     (CMD%u): %d: %08x %08x %08x %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_request_done(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.mmc_command*, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %7 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %8 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %7, i32 0, i32 3
  %9 = load %struct.mmc_command*, %struct.mmc_command** %8, align 8
  store %struct.mmc_command* %9, %struct.mmc_command** %5, align 8
  %10 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %11 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %2
  %16 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %17 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %22 = call i64 @mmc_host_is_spi(%struct.mmc_host* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %26 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @R1_SPI_ILLEGAL_COMMAND, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %35 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %33, %24
  br label %37

37:                                               ; preds = %36, %20, %15, %2
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %37
  %41 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %42 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %40
  %46 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %47 = call i32 @mmc_hostname(%struct.mmc_host* %46)
  %48 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %49 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 (i8*, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50, i32 %51)
  %53 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %54 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, i64* %54, align 8
  %57 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %58 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %60 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32 (%struct.mmc_host*, %struct.mmc_request*)*, i32 (%struct.mmc_host*, %struct.mmc_request*)** %62, align 8
  %64 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %65 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %66 = call i32 %63(%struct.mmc_host* %64, %struct.mmc_request* %65)
  br label %177

67:                                               ; preds = %40, %37
  %68 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %69 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @LED_OFF, align 4
  %72 = call i32 @led_trigger_event(i32 %70, i32 %71)
  %73 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %74 = call i32 @mmc_hostname(%struct.mmc_host* %73)
  %75 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %76 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %80 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %85 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %90 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %95 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i8*, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %77, i32 %78, i32 %83, i32 %88, i32 %93, i32 %98)
  %100 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %101 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %100, i32 0, i32 2
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = icmp ne %struct.TYPE_5__* %102, null
  br i1 %103, label %104, label %118

104:                                              ; preds = %67
  %105 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %106 = call i32 @mmc_hostname(%struct.mmc_host* %105)
  %107 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %108 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %107, i32 0, i32 2
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %113 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %112, i32 0, i32 2
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i8*, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %106, i32 %111, i32 %116)
  br label %118

118:                                              ; preds = %104, %67
  %119 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %120 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %119, i32 0, i32 1
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = icmp ne %struct.TYPE_6__* %121, null
  br i1 %122, label %123, label %165

123:                                              ; preds = %118
  %124 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %125 = call i32 @mmc_hostname(%struct.mmc_host* %124)
  %126 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %127 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %126, i32 0, i32 1
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %132 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %131, i32 0, i32 1
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %137 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %136, i32 0, i32 1
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %144 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %143, i32 0, i32 1
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %151 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %150, i32 0, i32 1
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %158 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %157, i32 0, i32 1
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 3
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i8*, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %125, i32 %130, i32 %135, i32 %142, i32 %149, i32 %156, i32 %163)
  br label %165

165:                                              ; preds = %123, %118
  %166 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %167 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %166, i32 0, i32 0
  %168 = load i32 (%struct.mmc_request*)*, i32 (%struct.mmc_request*)** %167, align 8
  %169 = icmp ne i32 (%struct.mmc_request*)* %168, null
  br i1 %169, label %170, label %176

170:                                              ; preds = %165
  %171 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %172 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %171, i32 0, i32 0
  %173 = load i32 (%struct.mmc_request*)*, i32 (%struct.mmc_request*)** %172, align 8
  %174 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %175 = call i32 %173(%struct.mmc_request* %174)
  br label %176

176:                                              ; preds = %170, %165
  br label %177

177:                                              ; preds = %176, %45
  ret void
}

declare dso_local i64 @mmc_host_is_spi(%struct.mmc_host*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @led_trigger_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
