; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-config.c___vxge_hw_channel_allocate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-config.c___vxge_hw_channel_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_channel = type { i32, i32, i32, i32, i32, i32, i32*, i64, i32*, i32*, i32*, i8*, %struct.__vxge_hw_vpath_handle*, %struct.__vxge_hw_device*, i32, i32, i32 }
%struct.__vxge_hw_device = type { i32, i32 }
%struct.__vxge_hw_vpath_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.__vxge_hw_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.__vxge_hw_channel* @__vxge_hw_channel_allocate(%struct.__vxge_hw_vpath_handle* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.__vxge_hw_channel*, align 8
  %7 = alloca %struct.__vxge_hw_vpath_handle*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.__vxge_hw_channel*, align 8
  %13 = alloca %struct.__vxge_hw_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.__vxge_hw_vpath_handle* %0, %struct.__vxge_hw_vpath_handle** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %14, align 4
  %16 = load %struct.__vxge_hw_vpath_handle*, %struct.__vxge_hw_vpath_handle** %7, align 8
  %17 = getelementptr inbounds %struct.__vxge_hw_vpath_handle, %struct.__vxge_hw_vpath_handle* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %19, align 8
  store %struct.__vxge_hw_device* %20, %struct.__vxge_hw_device** %13, align 8
  %21 = load %struct.__vxge_hw_vpath_handle*, %struct.__vxge_hw_vpath_handle** %7, align 8
  %22 = getelementptr inbounds %struct.__vxge_hw_vpath_handle, %struct.__vxge_hw_vpath_handle* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %29 [
    i32 129, label %27
    i32 128, label %28
  ]

27:                                               ; preds = %5
  store i32 4, i32* %14, align 4
  br label %30

28:                                               ; preds = %5
  store i32 4, i32* %14, align 4
  br label %30

29:                                               ; preds = %5
  br label %30

30:                                               ; preds = %29, %28, %27
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @kzalloc(i32 %31, i32 %32)
  %34 = bitcast i8* %33 to %struct.__vxge_hw_channel*
  store %struct.__vxge_hw_channel* %34, %struct.__vxge_hw_channel** %12, align 8
  %35 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %12, align 8
  %36 = icmp eq %struct.__vxge_hw_channel* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %145

38:                                               ; preds = %30
  %39 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %12, align 8
  %40 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %39, i32 0, i32 16
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %13, align 8
  %43 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %12, align 8
  %46 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %45, i32 0, i32 15
  store i32 %44, i32* %46, align 4
  %47 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %13, align 8
  %48 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %12, align 8
  %51 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %50, i32 0, i32 14
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %12, align 8
  %54 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %13, align 8
  %56 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %12, align 8
  %57 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %56, i32 0, i32 13
  store %struct.__vxge_hw_device* %55, %struct.__vxge_hw_device** %57, align 8
  %58 = load %struct.__vxge_hw_vpath_handle*, %struct.__vxge_hw_vpath_handle** %7, align 8
  %59 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %12, align 8
  %60 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %59, i32 0, i32 12
  store %struct.__vxge_hw_vpath_handle* %58, %struct.__vxge_hw_vpath_handle** %60, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %12, align 8
  %63 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %62, i32 0, i32 11
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %12, align 8
  %66 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %12, align 8
  %69 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %15, align 4
  %71 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %12, align 8
  %72 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 8, %74
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call i8* @kzalloc(i32 %76, i32 %77)
  %79 = bitcast i8* %78 to i32*
  %80 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %12, align 8
  %81 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %80, i32 0, i32 10
  store i32* %79, i32** %81, align 8
  %82 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %12, align 8
  %83 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %82, i32 0, i32 10
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %38
  br label %142

87:                                               ; preds = %38
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 8, %89
  %91 = trunc i64 %90 to i32
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call i8* @kzalloc(i32 %91, i32 %92)
  %94 = bitcast i8* %93 to i32*
  %95 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %12, align 8
  %96 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %95, i32 0, i32 9
  store i32* %94, i32** %96, align 8
  %97 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %12, align 8
  %98 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %97, i32 0, i32 9
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %87
  br label %142

102:                                              ; preds = %87
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %12, align 8
  %105 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 8, %107
  %109 = trunc i64 %108 to i32
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call i8* @kzalloc(i32 %109, i32 %110)
  %112 = bitcast i8* %111 to i32*
  %113 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %12, align 8
  %114 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %113, i32 0, i32 8
  store i32* %112, i32** %114, align 8
  %115 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %12, align 8
  %116 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %115, i32 0, i32 8
  %117 = load i32*, i32** %116, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %102
  br label %142

120:                                              ; preds = %102
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %12, align 8
  %123 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 4
  %124 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %12, align 8
  %125 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %124, i32 0, i32 7
  store i64 0, i64* %125, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = mul i64 8, %127
  %129 = trunc i64 %128 to i32
  %130 = load i32, i32* @GFP_KERNEL, align 4
  %131 = call i8* @kzalloc(i32 %129, i32 %130)
  %132 = bitcast i8* %131 to i32*
  %133 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %12, align 8
  %134 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %133, i32 0, i32 6
  store i32* %132, i32** %134, align 8
  %135 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %12, align 8
  %136 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %135, i32 0, i32 6
  %137 = load i32*, i32** %136, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %140

139:                                              ; preds = %120
  br label %142

140:                                              ; preds = %120
  %141 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %12, align 8
  store %struct.__vxge_hw_channel* %141, %struct.__vxge_hw_channel** %6, align 8
  br label %146

142:                                              ; preds = %139, %119, %101, %86
  %143 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %12, align 8
  %144 = call i32 @__vxge_hw_channel_free(%struct.__vxge_hw_channel* %143)
  br label %145

145:                                              ; preds = %142, %37
  store %struct.__vxge_hw_channel* null, %struct.__vxge_hw_channel** %6, align 8
  br label %146

146:                                              ; preds = %145, %140
  %147 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %6, align 8
  ret %struct.__vxge_hw_channel* %147
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @__vxge_hw_channel_free(%struct.__vxge_hw_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
