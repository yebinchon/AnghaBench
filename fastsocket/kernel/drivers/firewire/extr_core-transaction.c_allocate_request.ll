; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-transaction.c_allocate_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-transaction.c_allocate_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_request = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i32 }
%struct.fw_packet = type { i32*, i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"ERROR - corrupt request received - %08x %08x %08x\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@free_response_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fw_request* (%struct.fw_packet*)* @allocate_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fw_request* @allocate_request(%struct.fw_packet* %0) #0 {
  %2 = alloca %struct.fw_request*, align 8
  %3 = alloca %struct.fw_packet*, align 8
  %4 = alloca %struct.fw_request*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fw_packet* %0, %struct.fw_packet** %3, align 8
  %9 = load %struct.fw_packet*, %struct.fw_packet** %3, align 8
  %10 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @HEADER_GET_TCODE(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %39 [
    i32 128, label %16
    i32 129, label %21
    i32 132, label %21
    i32 130, label %31
    i32 131, label %32
  ]

16:                                               ; preds = %1
  %17 = load %struct.fw_packet*, %struct.fw_packet** %3, align 8
  %18 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  store i32* %20, i32** %5, align 8
  store i32 4, i32* %6, align 4
  br label %56

21:                                               ; preds = %1, %1
  %22 = load %struct.fw_packet*, %struct.fw_packet** %3, align 8
  %23 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %5, align 8
  %25 = load %struct.fw_packet*, %struct.fw_packet** %3, align 8
  %26 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @HEADER_GET_DATA_LENGTH(i32 %29)
  store i32 %30, i32* %6, align 4
  br label %56

31:                                               ; preds = %1
  store i32* null, i32** %5, align 8
  store i32 4, i32* %6, align 4
  br label %56

32:                                               ; preds = %1
  store i32* null, i32** %5, align 8
  %33 = load %struct.fw_packet*, %struct.fw_packet** %3, align 8
  %34 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @HEADER_GET_DATA_LENGTH(i32 %37)
  store i32 %38, i32* %6, align 4
  br label %56

39:                                               ; preds = %1
  %40 = load %struct.fw_packet*, %struct.fw_packet** %3, align 8
  %41 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.fw_packet*, %struct.fw_packet** %3, align 8
  %46 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.fw_packet*, %struct.fw_packet** %3, align 8
  %51 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @fw_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %49, i32 %54)
  store %struct.fw_request* null, %struct.fw_request** %2, align 8
  br label %140

56:                                               ; preds = %32, %31, %21, %16
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 40, %58
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* @GFP_ATOMIC, align 4
  %62 = call %struct.fw_request* @kmalloc(i32 %60, i32 %61)
  store %struct.fw_request* %62, %struct.fw_request** %4, align 8
  %63 = load %struct.fw_request*, %struct.fw_request** %4, align 8
  %64 = icmp eq %struct.fw_request* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  store %struct.fw_request* null, %struct.fw_request** %2, align 8
  br label %140

66:                                               ; preds = %56
  %67 = load %struct.fw_packet*, %struct.fw_packet** %3, align 8
  %68 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, 8191
  %71 = add nsw i32 %70, 4000
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp sge i32 %72, 8000
  br i1 %73, label %74, label %83

74:                                               ; preds = %66
  %75 = load %struct.fw_packet*, %struct.fw_packet** %3, align 8
  %76 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, -8192
  %79 = add nsw i32 %78, 8192
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %79, %80
  %82 = sub nsw i32 %81, 8000
  store i32 %82, i32* %8, align 4
  br label %90

83:                                               ; preds = %66
  %84 = load %struct.fw_packet*, %struct.fw_packet** %3, align 8
  %85 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, -8192
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %87, %88
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %83, %74
  %91 = load %struct.fw_packet*, %struct.fw_packet** %3, align 8
  %92 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.fw_request*, %struct.fw_request** %4, align 8
  %95 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 4
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.fw_request*, %struct.fw_request** %4, align 8
  %99 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 8
  %101 = load %struct.fw_packet*, %struct.fw_packet** %3, align 8
  %102 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.fw_request*, %struct.fw_request** %4, align 8
  %105 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 3
  store i32 %103, i32* %106, align 8
  %107 = load %struct.fw_request*, %struct.fw_request** %4, align 8
  %108 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  store i64 0, i64* %109, align 8
  %110 = load i32, i32* @free_response_callback, align 4
  %111 = load %struct.fw_request*, %struct.fw_request** %4, align 8
  %112 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 4
  %114 = load %struct.fw_packet*, %struct.fw_packet** %3, align 8
  %115 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.fw_request*, %struct.fw_request** %4, align 8
  %118 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.fw_request*, %struct.fw_request** %4, align 8
  %121 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load i32*, i32** %5, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %131

124:                                              ; preds = %90
  %125 = load %struct.fw_request*, %struct.fw_request** %4, align 8
  %126 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32*, i32** %5, align 8
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @memcpy(i32 %127, i32* %128, i32 %129)
  br label %131

131:                                              ; preds = %124, %90
  %132 = load %struct.fw_request*, %struct.fw_request** %4, align 8
  %133 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.fw_packet*, %struct.fw_packet** %3, align 8
  %136 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @memcpy(i32 %134, i32* %137, i32 8)
  %139 = load %struct.fw_request*, %struct.fw_request** %4, align 8
  store %struct.fw_request* %139, %struct.fw_request** %2, align 8
  br label %140

140:                                              ; preds = %131, %65, %39
  %141 = load %struct.fw_request*, %struct.fw_request** %2, align 8
  ret %struct.fw_request* %141
}

declare dso_local i32 @HEADER_GET_TCODE(i32) #1

declare dso_local i32 @HEADER_GET_DATA_LENGTH(i32) #1

declare dso_local i32 @fw_error(i8*, i32, i32, i32) #1

declare dso_local %struct.fw_request* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
