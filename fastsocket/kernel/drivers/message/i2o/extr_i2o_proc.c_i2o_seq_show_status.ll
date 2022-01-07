; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_proc.c_i2o_seq_show_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_proc.c_i2o_seq_show_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.i2o_controller = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Organization ID        : %0#6x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"IOP ID                 : %0#5x\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Host Unit ID           : %0#6x\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Segment Number         : %0#5x\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"I2O version            : \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"1.0\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"1.5\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"2.0\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Unknown version\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"IOP State              : \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"INIT\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"RESET\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"HOLD\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"READY\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"OPERATIONAL\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"FAILED\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"FAULTED\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"Unknown\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"Messenger Type         : \00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"Memory mapped\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"Memory mapped only\0A\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"Remote only\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"Memory mapped and remote\0A\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"Inbound Frame Size     : %d bytes\0A\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"Max Inbound Frames     : %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"Current Inbound Frames : %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"Max Outbound Frames    : %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"Product ID             : %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"Expected LCT Size      : %d bytes\0A\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"IOP Capabilities\0A\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"    Context Field Size Support : \00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"Supports only 32-bit context fields\0A\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"Supports only 64-bit context fields\0A\00", align 1
@.str.33 = private unnamed_addr constant [65 x i8] c"Supports 32-bit and 64-bit context fields, but not concurrently\0A\00", align 1
@.str.34 = private unnamed_addr constant [56 x i8] c"Supports 32-bit and 64-bit context fields concurrently\0A\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"0x%08x\0A\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"    Current Context Field Size : \00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"not configured\0A\00", align 1
@.str.38 = private unnamed_addr constant [60 x i8] c"Supports both 32-bit or 64-bit context fields concurrently\0A\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"    Inbound Peer Support       : %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"Supported\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"Not supported\00", align 1
@.str.43 = private unnamed_addr constant [37 x i8] c"    Outbound Peer Support      : %s\0A\00", align 1
@.str.44 = private unnamed_addr constant [37 x i8] c"    Peer to Peer Support       : %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [39 x i8] c"Desired private memory size   : %d kB\0A\00", align 1
@.str.46 = private unnamed_addr constant [39 x i8] c"Allocated private memory size : %d kB\0A\00", align 1
@.str.47 = private unnamed_addr constant [40 x i8] c"Private memory base address   : %0#10x\0A\00", align 1
@.str.48 = private unnamed_addr constant [39 x i8] c"Desired private I/O size      : %d kB\0A\00", align 1
@.str.49 = private unnamed_addr constant [39 x i8] c"Allocated private I/O size    : %d kB\0A\00", align 1
@.str.50 = private unnamed_addr constant [40 x i8] c"Private I/O base address      : %0#10x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @i2o_seq_show_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2o_seq_show_status(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.i2o_controller*, align 8
  %6 = alloca [25 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.i2o_controller*
  store %struct.i2o_controller* %12, %struct.i2o_controller** %5, align 8
  %13 = load %struct.i2o_controller*, %struct.i2o_controller** %5, align 8
  %14 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %8, align 8
  %17 = load %struct.i2o_controller*, %struct.i2o_controller** %5, align 8
  %18 = call i32 @i2o_status_get(%struct.i2o_controller* %17)
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %44 = load i32, i32* %7, align 4
  switch i32 %44, label %54 [
    i32 0, label %45
    i32 1, label %48
    i32 2, label %51
  ]

45:                                               ; preds = %2
  %46 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %47 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %57

48:                                               ; preds = %2
  %49 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %50 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %57

51:                                               ; preds = %2
  %52 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %53 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %57

54:                                               ; preds = %2
  %55 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %56 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %51, %48, %45
  %58 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %59 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %84 [
    i32 1, label %63
    i32 2, label %66
    i32 4, label %69
    i32 5, label %72
    i32 8, label %75
    i32 16, label %78
    i32 17, label %81
  ]

63:                                               ; preds = %57
  %64 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %65 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  br label %87

66:                                               ; preds = %57
  %67 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %68 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %87

69:                                               ; preds = %57
  %70 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %71 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  br label %87

72:                                               ; preds = %57
  %73 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %74 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  br label %87

75:                                               ; preds = %57
  %76 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %77 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  br label %87

78:                                               ; preds = %57
  %79 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %80 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  br label %87

81:                                               ; preds = %57
  %82 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %83 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  br label %87

84:                                               ; preds = %57
  %85 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %86 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %81, %78, %75, %72, %69, %66, %63
  %88 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %89 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0))
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  switch i32 %92, label %105 [
    i32 0, label %93
    i32 1, label %96
    i32 2, label %99
    i32 3, label %102
  ]

93:                                               ; preds = %87
  %94 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %95 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %94, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  br label %108

96:                                               ; preds = %87
  %97 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %98 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  br label %108

99:                                               ; preds = %87
  %100 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %101 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0))
  br label %108

102:                                              ; preds = %87
  %103 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %104 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0))
  br label %108

105:                                              ; preds = %87
  %106 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %107 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %102, %99, %96, %93
  %109 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 2
  %114 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %109, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i64 0, i64 0), i32 %113)
  %115 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 8
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i64 0, i64 0), i32 %118)
  %120 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 9
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %120, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0), i32 %123)
  %125 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 10
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %125, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0), i32 %128)
  %130 = getelementptr inbounds [25 x i8], [25 x i8]* %6, i64 0, i64 0
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 19
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @memcpy(i8* %130, i32 %133, i32 24)
  %135 = getelementptr inbounds [25 x i8], [25 x i8]* %6, i64 0, i64 24
  store i8 0, i8* %135, align 8
  %136 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %137 = getelementptr inbounds [25 x i8], [25 x i8]* %6, i64 0, i64 0
  %138 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %136, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i64 0, i64 0), i8* %137)
  %139 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 11
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %139, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.28, i64 0, i64 0), i32 %142)
  %144 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %145 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %144, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0))
  %146 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %147 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %146, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i64 0, i64 0))
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 12
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %150, 3
  switch i32 %151, label %164 [
    i32 0, label %152
    i32 1, label %155
    i32 2, label %158
    i32 3, label %161
  ]

152:                                              ; preds = %108
  %153 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %154 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %153, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i64 0, i64 0))
  br label %170

155:                                              ; preds = %108
  %156 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %157 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %156, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.32, i64 0, i64 0))
  br label %170

158:                                              ; preds = %108
  %159 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %160 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %159, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.33, i64 0, i64 0))
  br label %170

161:                                              ; preds = %108
  %162 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %163 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %162, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.34, i64 0, i64 0))
  br label %170

164:                                              ; preds = %108
  %165 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 12
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %165, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %164, %161, %158, %155, %152
  %171 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %172 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %171, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i64 0, i64 0))
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 12
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, 12
  switch i32 %176, label %189 [
    i32 0, label %177
    i32 4, label %180
    i32 8, label %183
    i32 12, label %186
  ]

177:                                              ; preds = %170
  %178 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %179 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %178, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i64 0, i64 0))
  br label %192

180:                                              ; preds = %170
  %181 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %182 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %181, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i64 0, i64 0))
  br label %192

183:                                              ; preds = %170
  %184 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %185 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %184, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.32, i64 0, i64 0))
  br label %192

186:                                              ; preds = %170
  %187 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %188 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %187, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.38, i64 0, i64 0))
  br label %192

189:                                              ; preds = %170
  %190 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %191 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %190, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0))
  br label %192

192:                                              ; preds = %189, %186, %183, %180, %177
  %193 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 12
  %196 = load i32, i32* %195, align 4
  %197 = and i32 %196, 16
  %198 = icmp ne i32 %197, 0
  %199 = zext i1 %198 to i64
  %200 = select i1 %198, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0)
  %201 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %193, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.40, i64 0, i64 0), i8* %200)
  %202 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 12
  %205 = load i32, i32* %204, align 4
  %206 = and i32 %205, 32
  %207 = icmp ne i32 %206, 0
  %208 = zext i1 %207 to i64
  %209 = select i1 %207, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0)
  %210 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %202, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.43, i64 0, i64 0), i8* %209)
  %211 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 12
  %214 = load i32, i32* %213, align 4
  %215 = and i32 %214, 64
  %216 = icmp ne i32 %215, 0
  %217 = zext i1 %216 to i64
  %218 = select i1 %216, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0)
  %219 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %211, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.44, i64 0, i64 0), i8* %218)
  %220 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 13
  %223 = load i32, i32* %222, align 4
  %224 = ashr i32 %223, 10
  %225 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %220, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.45, i64 0, i64 0), i32 %224)
  %226 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 14
  %229 = load i32, i32* %228, align 4
  %230 = ashr i32 %229, 10
  %231 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %226, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.46, i64 0, i64 0), i32 %230)
  %232 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 15
  %235 = load i32, i32* %234, align 4
  %236 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %232, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.47, i64 0, i64 0), i32 %235)
  %237 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 16
  %240 = load i32, i32* %239, align 4
  %241 = ashr i32 %240, 10
  %242 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %237, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.48, i64 0, i64 0), i32 %241)
  %243 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %244 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 17
  %246 = load i32, i32* %245, align 4
  %247 = ashr i32 %246, 10
  %248 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %243, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.49, i64 0, i64 0), i32 %247)
  %249 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 18
  %252 = load i32, i32* %251, align 4
  %253 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %249, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.50, i64 0, i64 0), i32 %252)
  ret i32 0
}

declare dso_local i32 @i2o_status_get(%struct.i2o_controller*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
