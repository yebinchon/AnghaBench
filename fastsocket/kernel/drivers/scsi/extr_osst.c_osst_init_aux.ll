; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_osst.c_osst_init_aux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_osst.c_osst_init_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osst_tape = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i8*, i8* }
%struct.TYPE_9__ = type { i8*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"LIN4\00", align 1
@OS_CONFIG_PARTITION = common dso_local global i32 0, align 4
@OS_PARTITION_VERSION = common dso_local global i8* null, align 8
@OS_DAT_FLAGS_MARK = common dso_local global i32 0, align 4
@OS_DAT_FLAGS_DATA = common dso_local global i32 0, align 4
@OS_DATA_PARTITION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.osst_tape*, i32, i32, i32, i32, i32)* @osst_init_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @osst_init_aux(%struct.osst_tape* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.osst_tape*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  store %struct.osst_tape* %0, %struct.osst_tape** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.osst_tape*, %struct.osst_tape** %7, align 8
  %17 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %16, i32 0, i32 9
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %13, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 14
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %14, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 13
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %15, align 8
  %25 = load %struct.osst_tape*, %struct.osst_tape** %7, align 8
  %26 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %25, i32 0, i32 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %6
  br label %187

30:                                               ; preds = %6
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %32 = call i32 @memset(%struct.TYPE_11__* %31, i32 0, i32 168)
  %33 = call i8* @htonl(i32 0)
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 12
  store i8* %33, i8** %35, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 11
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @memcpy(i32 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %40 = call i8* @htonl(i32 0)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 10
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %8, align 4
  switch i32 %46, label %164 [
    i32 129, label %47
    i32 131, label %84
    i32 128, label %84
    i32 130, label %125
  ]

47:                                               ; preds = %30
  %48 = load %struct.osst_tape*, %struct.osst_tape** %7, align 8
  %49 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i8* @htonl(i32 %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 8
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* @OS_CONFIG_PARTITION, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = load i8*, i8** @OS_PARTITION_VERSION, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = call i8* @htons(i32 65535)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = call i8* @htonl(i32 0)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = call i8* @htonl(i32 2999)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  %69 = call i8* @htonl(i32 0)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 7
  store i8* %69, i8** %71, align 8
  %72 = call i8* @htonl(i32 0)
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 6
  store i8* %72, i8** %74, align 8
  %75 = call i8* @htonl(i32 0)
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 5
  store i8* %75, i8** %77, align 8
  %78 = load %struct.osst_tape*, %struct.osst_tape** %7, align 8
  %79 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @htonl(i32 %80)
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 9
  store i8* %81, i8** %83, align 8
  br label %165

84:                                               ; preds = %30, %30
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  store i32 8, i32* %86, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 4
  store i32 0, i32* %88, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  store i32 1, i32* %90, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 3
  store i32 0, i32* %92, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i8* @htonl(i32 %93)
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 3
  store i8* %94, i8** %99, align 8
  %100 = load i32, i32* %12, align 4
  %101 = call i8* @htons(i32 %100)
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  store i8* %101, i8** %106, align 8
  %107 = load i32, i32* %8, align 4
  %108 = icmp eq i32 %107, 128
  br i1 %108, label %109, label %111

109:                                              ; preds = %84
  %110 = load i32, i32* @OS_DAT_FLAGS_MARK, align 4
  br label %113

111:                                              ; preds = %84
  %112 = load i32, i32* @OS_DAT_FLAGS_DATA, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i32 [ %110, %109 ], [ %112, %111 ]
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  store i32 %114, i32* %119, align 4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  store i32 0, i32* %124, align 8
  br label %125

125:                                              ; preds = %30, %113
  %126 = call i8* @htonl(i32 0)
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 8
  store i8* %126, i8** %128, align 8
  %129 = load i32, i32* @OS_DATA_PARTITION, align 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 8
  %132 = load i8*, i8** @OS_PARTITION_VERSION, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 3
  store i8* %132, i8** %134, align 8
  %135 = load %struct.osst_tape*, %struct.osst_tape** %7, align 8
  %136 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i8* @htons(i32 %137)
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 2
  store i8* %138, i8** %140, align 8
  %141 = load %struct.osst_tape*, %struct.osst_tape** %7, align 8
  %142 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = call i8* @htonl(i32 %143)
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  store i8* %144, i8** %146, align 8
  %147 = load %struct.osst_tape*, %struct.osst_tape** %7, align 8
  %148 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = call i8* @htonl(i32 %149)
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  store i8* %150, i8** %152, align 8
  %153 = load i32, i32* %9, align 4
  %154 = call i8* @htonl(i32 %153)
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 7
  store i8* %154, i8** %156, align 8
  %157 = call i8* @htonl(i32 0)
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 6
  store i8* %157, i8** %159, align 8
  %160 = load i32, i32* %10, align 4
  %161 = call i8* @htonl(i32 %160)
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 5
  store i8* %161, i8** %163, align 8
  br label %165

164:                                              ; preds = %30
  br label %165

165:                                              ; preds = %164, %125, %47
  %166 = load %struct.osst_tape*, %struct.osst_tape** %7, align 8
  %167 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = call i8* @htonl(i32 %168)
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 4
  store i8* %169, i8** %171, align 8
  %172 = call i8* @htonl(i32 -1)
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 3
  store i8* %172, i8** %174, align 8
  %175 = load %struct.osst_tape*, %struct.osst_tape** %7, align 8
  %176 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 8
  %178 = call i8* @htonl(i32 %177)
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 2
  store i8* %178, i8** %180, align 8
  %181 = load %struct.osst_tape*, %struct.osst_tape** %7, align 8
  %182 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %181, i32 0, i32 7
  %183 = load i32, i32* %182, align 4
  %184 = call i8* @htonl(i32 %183)
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 1
  store i8* %184, i8** %186, align 8
  br label %187

187:                                              ; preds = %165, %29
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i8* @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
