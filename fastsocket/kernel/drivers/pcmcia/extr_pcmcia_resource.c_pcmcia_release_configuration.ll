; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pcmcia_resource.c_pcmcia_release_configuration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pcmcia_resource.c_pcmcia_release_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }
%struct.pcmcia_device = type { i64, %struct.TYPE_10__*, %struct.pcmcia_socket* }
%struct.TYPE_10__ = type { i32 }
%struct.pcmcia_socket = type { i64, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_11__ }
%struct.TYPE_8__ = type { i32 (%struct.pcmcia_socket*, %struct.TYPE_9__*)*, i32 (%struct.pcmcia_socket*, %struct.TYPE_11__*)* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64, i64, i32 }

@__const.pcmcia_release_configuration.io = private unnamed_addr constant %struct.TYPE_9__ { i32 0, i32 0, i32 0, i32 0, i32 1, i32 0 }, align 4
@SS_OUTPUT_ENA = common dso_local global i32 0, align 4
@CONFIG_LOCKED = common dso_local global i32 0, align 4
@CONFIG_IO_REQ = common dso_local global i32 0, align 4
@MAX_IO_WIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcmcia_release_configuration(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.TYPE_9__, align 4
  %4 = alloca %struct.pcmcia_socket*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %7 = bitcast %struct.TYPE_9__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_9__* @__const.pcmcia_release_configuration.io to i8*), i64 24, i1 false)
  %8 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %9 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %8, i32 0, i32 2
  %10 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %9, align 8
  store %struct.pcmcia_socket* %10, %struct.pcmcia_socket** %4, align 8
  %11 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %12 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %5, align 8
  %14 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %15 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %1
  %19 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %20 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %22 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %22, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %18
  %27 = load i32, i32* @SS_OUTPUT_ENA, align 4
  %28 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %29 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 8
  %31 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %32 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %35 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %38 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i32 (%struct.pcmcia_socket*, %struct.TYPE_11__*)*, i32 (%struct.pcmcia_socket*, %struct.TYPE_11__*)** %40, align 8
  %42 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %43 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %44 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %43, i32 0, i32 3
  %45 = call i32 %41(%struct.pcmcia_socket* %42, %struct.TYPE_11__* %44)
  br label %46

46:                                               ; preds = %26, %18
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @CONFIG_LOCKED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %118

54:                                               ; preds = %47
  %55 = load i32, i32* @CONFIG_LOCKED, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CONFIG_IO_REQ, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %117

67:                                               ; preds = %54
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %113, %67
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @MAX_IO_WIN, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %116

72:                                               ; preds = %68
  %73 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %74 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %73, i32 0, i32 2
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %72
  br label %113

83:                                               ; preds = %72
  %84 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %85 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %84, i32 0, i32 2
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, -1
  store i64 %92, i64* %90, align 8
  %93 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %94 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %93, i32 0, i32 2
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %83
  br label %113

103:                                              ; preds = %83
  %104 = load i32, i32* %6, align 4
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  store i32 %104, i32* %105, align 4
  %106 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %107 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %106, i32 0, i32 1
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32 (%struct.pcmcia_socket*, %struct.TYPE_9__*)*, i32 (%struct.pcmcia_socket*, %struct.TYPE_9__*)** %109, align 8
  %111 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %112 = call i32 %110(%struct.pcmcia_socket* %111, %struct.TYPE_9__* %3)
  br label %113

113:                                              ; preds = %103, %102, %82
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %68

116:                                              ; preds = %68
  br label %117

117:                                              ; preds = %116, %54
  br label %118

118:                                              ; preds = %117, %47
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
