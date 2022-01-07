; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_rw_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_rw_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 (...)*, i32 (i32)*, i32 (...)* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64 }

@R_HEAD = common dso_local global i32 0, align 4
@DRS = common dso_local global %struct.TYPE_12__* null, align 8
@jiffies = common dso_local global i64 0, align 8
@CODE2SIZE = common dso_local global i32 0, align 4
@ST1 = common dso_local global i32 0, align 4
@ST1_EOC = common dso_local global i32 0, align 4
@COMMAND = common dso_local global i32 0, align 4
@R_TRACK = common dso_local global i32 0, align 4
@TRACK = common dso_local global i32 0, align 4
@HEAD = common dso_local global i32 0, align 4
@SECT_PER_TRACK = common dso_local global i32 0, align 4
@R_SECTOR = common dso_local global i32 0, align 4
@SECTOR = common dso_local global i32 0, align 4
@SIZECODE = common dso_local global i32 0, align 4
@in_sector_offset = common dso_local global i32 0, align 4
@current_count_sectors = common dso_local global i32 0, align 4
@cont = common dso_local global %struct.TYPE_11__* null, align 8
@_floppy = common dso_local global %struct.TYPE_9__* null, align 8
@current_type = common dso_local global %struct.TYPE_9__** null, align 8
@current_drive = common dso_local global i64 0, align 8
@floppy_sizes = common dso_local global i32* null, align 8
@probing = common dso_local global i64 0, align 8
@DP = common dso_local global %struct.TYPE_13__* null, align 8
@FTD_MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Auto-detected floppy type %s in fd%d\0A\00", align 1
@FD_READ = common dso_local global i64 0, align 8
@raw_cmd = common dso_local global %struct.TYPE_8__* null, align 8
@current_req = common dso_local global %struct.TYPE_10__* null, align 8
@buffer_track = common dso_local global i32 0, align 4
@buffer_drive = common dso_local global i64 0, align 8
@buffer_max = common dso_local global i32 0, align 4
@fsector_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rw_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rw_interrupt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @R_HEAD, align 4
  %6 = icmp sge i32 %5, 2
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %166

8:                                                ; preds = %0
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** @DRS, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** @DRS, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  br label %17

17:                                               ; preds = %13, %8
  store i32 0, i32* %4, align 4
  %18 = load i32, i32* @CODE2SIZE, align 4
  %19 = load i32, i32* @ST1, align 4
  %20 = load i32, i32* @ST1_EOC, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 1, i32* %1, align 4
  br label %25

24:                                               ; preds = %17
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i32, i32* @COMMAND, align 4
  %27 = and i32 %26, 128
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 2, i32* %3, align 4
  br label %31

30:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i32, i32* @R_TRACK, align 4
  %33 = load i32, i32* @TRACK, align 4
  %34 = sub nsw i32 %32, %33
  %35 = load i32, i32* %3, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load i32, i32* @R_HEAD, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32, i32* @HEAD, align 4
  %40 = sub nsw i32 %38, %39
  %41 = load i32, i32* @SECT_PER_TRACK, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* @R_SECTOR, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32, i32* @SECTOR, align 4
  %46 = sub nsw i32 %44, %45
  %47 = load i32, i32* %1, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* @SIZECODE, align 4
  %50 = shl i32 %48, %49
  %51 = ashr i32 %50, 2
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* @in_sector_offset, align 4
  %53 = load i32, i32* %4, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @INFBOUND(i32 %55, i32 0)
  %57 = load i32, i32* @current_count_sectors, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @SUPBOUND(i32 %57, i32 %58)
  %60 = call i32 (...) @interpret_errors()
  switch i32 %60, label %99 [
    i32 2, label %61
    i32 1, label %66
    i32 0, label %79
  ]

61:                                               ; preds = %31
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cont, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32 (...)*, i32 (...)** %63, align 8
  %65 = call i32 (...) %64()
  br label %166

66:                                               ; preds = %31
  %67 = load i32, i32* @current_count_sectors, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %66
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cont, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = load i32 (...)*, i32 (...)** %71, align 8
  %73 = call i32 (...) %72()
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cont, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32 (...)*, i32 (...)** %75, align 8
  %77 = call i32 (...) %76()
  br label %166

78:                                               ; preds = %66
  br label %99

79:                                               ; preds = %31
  %80 = load i32, i32* @current_count_sectors, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %79
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cont, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32 (...)*, i32 (...)** %84, align 8
  %86 = call i32 (...) %85()
  br label %166

87:                                               ; preds = %79
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** @_floppy, align 8
  %89 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @current_type, align 8
  %90 = load i64, i64* @current_drive, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %89, i64 %90
  store %struct.TYPE_9__* %88, %struct.TYPE_9__** %91, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** @_floppy, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** @floppy_sizes, align 8
  %96 = load i64, i64* @current_drive, align 8
  %97 = call i64 @TOMINOR(i64 %96)
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %94, i32* %98, align 4
  br label %99

99:                                               ; preds = %31, %87, %78
  %100 = load i64, i64* @probing, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %127

102:                                              ; preds = %99
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DP, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @FTD_MSG, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %102
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** @_floppy, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* @current_drive, align 8
  %114 = call i32 @DPRINT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %112, i64 %113)
  br label %115

115:                                              ; preds = %109, %102
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** @_floppy, align 8
  %117 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @current_type, align 8
  %118 = load i64, i64* @current_drive, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %117, i64 %118
  store %struct.TYPE_9__* %116, %struct.TYPE_9__** %119, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** @_floppy, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** @floppy_sizes, align 8
  %124 = load i64, i64* @current_drive, align 8
  %125 = call i64 @TOMINOR(i64 %124)
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %122, i32* %126, align 4
  store i64 0, i64* @probing, align 8
  br label %127

127:                                              ; preds = %115, %99
  %128 = load i32, i32* @COMMAND, align 4
  %129 = call i64 @CT(i32 %128)
  %130 = load i64, i64* @FD_READ, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %140, label %132

132:                                              ; preds = %127
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** @raw_cmd, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current_req, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %135, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %132, %127
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cont, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = load i32 (i32)*, i32 (i32)** %142, align 8
  %144 = call i32 %143(i32 1)
  br label %161

145:                                              ; preds = %132
  %146 = load i32, i32* @COMMAND, align 4
  %147 = call i64 @CT(i32 %146)
  %148 = load i64, i64* @FD_READ, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %145
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** @raw_cmd, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  store i32 %153, i32* @buffer_track, align 4
  %154 = load i64, i64* @current_drive, align 8
  store i64 %154, i64* @buffer_drive, align 8
  %155 = load i32, i32* @buffer_max, align 4
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* @fsector_t, align 4
  %158 = add nsw i32 %156, %157
  %159 = call i32 @INFBOUND(i32 %155, i32 %158)
  br label %160

160:                                              ; preds = %150, %145
  br label %161

161:                                              ; preds = %160, %140
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cont, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load i32 (...)*, i32 (...)** %163, align 8
  %165 = call i32 (...) %164()
  br label %166

166:                                              ; preds = %161, %82, %69, %61, %7
  ret void
}

declare dso_local i32 @INFBOUND(i32, i32) #1

declare dso_local i32 @SUPBOUND(i32, i32) #1

declare dso_local i32 @interpret_errors(...) #1

declare dso_local i64 @TOMINOR(i64) #1

declare dso_local i32 @DPRINT(i8*, i32, i64) #1

declare dso_local i64 @CT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
