; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_i2ellis.c_iiDownloadBlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_i2ellis.c_iiDownloadBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_14__, i32, i64, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }

@I2E_MAGIC = common dso_local global i64 0, align 8
@II_DOWN_BADVALID = common dso_local global i32 0, align 4
@MAGIC_LOADFILE = common dso_local global i32 0, align 4
@II_DOWN_BADFILE = common dso_local global i32 0, align 4
@II_DOWN_BADSTATE = common dso_local global i32 0, align 4
@MAX_DLOAD_READ_TIME = common dso_local global i32 0, align 4
@II_DOWN_TIMEOUT = common dso_local global i32 0, align 4
@LOADWARE_BLOCK_SIZE = common dso_local global i32 0, align 4
@MAX_DLOAD_START_TIME = common dso_local global i32 0, align 4
@II_DOWN_CONTINUING = common dso_local global i32 0, align 4
@MAX_DLOAD_ACK_TIME = common dso_local global i32 0, align 4
@II_STATE_STDLOADED = common dso_local global i32 0, align 4
@II_STATE_LOADED = common dso_local global i32 0, align 4
@POR_DEBUG_PORT = common dso_local global i32 0, align 4
@II_DOWN_GOOD = common dso_local global i32 0, align 4
@II_DOWN_BAD = common dso_local global i32 0, align 4
@II_STATE_BADLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, i32)* @iiDownloadBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iiDownloadBlock(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @I2E_MAGIC, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @II_DOWN_BADVALID, align 4
  store i32 %16, i32* %4, align 4
  br label %156

17:                                               ; preds = %3
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %60 [
    i32 130, label %21
    i32 131, label %59
  ]

21:                                               ; preds = %17
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MAGIC_LOADFILE, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @II_DOWN_BADFILE, align 4
  store i32 %29, i32* %4, align 4
  br label %156

30:                                               ; preds = %21
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 1, %34
  %36 = sext i32 %35 to i64
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 4
  store i64 %36, i64* %38, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  store i32 131, i32* %40, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 8
  store i32 1, i32* %9, align 4
  br label %62

59:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  br label %62

60:                                               ; preds = %17
  %61 = load i32, i32* @II_DOWN_BADSTATE, align 4
  store i32 %61, i32* %4, align 4
  br label %156

62:                                               ; preds = %59, %30
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %64 = load i32, i32* @MAX_DLOAD_READ_TIME, align 4
  %65 = call i32 @iiWaitForTxEmpty(%struct.TYPE_16__* %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @II_DOWN_TIMEOUT, align 4
  store i32 %68, i32* %4, align 4
  br label %156

69:                                               ; preds = %62
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @LOADWARE_BLOCK_SIZE, align 4
  %75 = call i32 @iiWriteBuf(%struct.TYPE_16__* %70, i32 %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %69
  %78 = load i32, i32* @II_DOWN_BADVALID, align 4
  store i32 %78, i32* %4, align 4
  br label %156

79:                                               ; preds = %69
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %84 = load i32, i32* @MAX_DLOAD_START_TIME, align 4
  %85 = call i32 @iiWaitForTxEmpty(%struct.TYPE_16__* %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @II_DOWN_TIMEOUT, align 4
  store i32 %88, i32* %4, align 4
  br label %156

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %79
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, -1
  store i64 %94, i64* %92, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* @II_DOWN_CONTINUING, align 4
  store i32 %97, i32* %4, align 4
  br label %156

98:                                               ; preds = %90
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %100 = load i32, i32* @MAX_DLOAD_READ_TIME, align 4
  %101 = call i32 @iiWaitForTxEmpty(%struct.TYPE_16__* %99, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* @II_DOWN_TIMEOUT, align 4
  store i32 %104, i32* %4, align 4
  br label %156

105:                                              ; preds = %98
  %106 = load i32, i32* @MAX_DLOAD_ACK_TIME, align 4
  %107 = sdiv i32 %106, 10
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %148, %105
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %151

112:                                              ; preds = %108
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %114 = call i64 @I2_HAS_INPUT(%struct.TYPE_16__* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %148

116:                                              ; preds = %112
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @inb(i32 %119)
  switch i32 %120, label %146 [
    i32 128, label %121
    i32 129, label %145
  ]

121:                                              ; preds = %116
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i32, i32* @II_STATE_STDLOADED, align 4
  br label %128

126:                                              ; preds = %121
  %127 = load i32, i32* @II_STATE_LOADED, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i32 [ %125, %124 ], [ %127, %126 ]
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @POR_DEBUG_PORT, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %128
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %142 = call i32 @iiDelay(%struct.TYPE_16__* %141, i32 700)
  br label %143

143:                                              ; preds = %140, %128
  %144 = load i32, i32* @II_DOWN_GOOD, align 4
  store i32 %144, i32* %4, align 4
  br label %156

145:                                              ; preds = %116
  br label %146

146:                                              ; preds = %116, %145
  %147 = load i32, i32* @II_DOWN_BAD, align 4
  store i32 %147, i32* %4, align 4
  br label %156

148:                                              ; preds = %112
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %150 = call i32 @iiDelay(%struct.TYPE_16__* %149, i32 10)
  br label %108

151:                                              ; preds = %108
  %152 = load i32, i32* @II_STATE_BADLOAD, align 4
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* @II_DOWN_TIMEOUT, align 4
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %151, %146, %143, %103, %96, %87, %77, %67, %60, %28, %15
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i32 @iiWaitForTxEmpty(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @iiWriteBuf(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i64 @I2_HAS_INPUT(%struct.TYPE_16__*) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @iiDelay(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
