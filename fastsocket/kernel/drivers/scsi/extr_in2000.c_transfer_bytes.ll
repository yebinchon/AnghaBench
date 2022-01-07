; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_in2000.c_transfer_bytes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_in2000.c_transfer_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i64, i32, i64, %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.IN2000_hostdata = type { i32*, i64, i16, i32, i8* }

@WD_SYNCHRONOUS_TRANSFER = common dso_local global i32 0, align 4
@WD_CONTROL = common dso_local global i32 0, align 4
@CTRL_IDI = common dso_local global i32 0, align 4
@CTRL_EDI = common dso_local global i32 0, align 4
@CTRL_BUS = common dso_local global i32 0, align 4
@IO_FIFO_WRITE = common dso_local global i32 0, align 4
@IO_FIFO_READ = common dso_local global i32 0, align 4
@L2_DATA = common dso_local global i64 0, align 8
@L2_BASIC = common dso_local global i64 0, align 8
@WD_COMMAND_PHASE = common dso_local global i32 0, align 4
@WD_CMD_SEL_ATN_XFER = common dso_local global i32 0, align 4
@S_RUNNING_LEVEL2 = common dso_local global i8* null, align 8
@WD_CMD_TRANS_INFO = common dso_local global i32 0, align 4
@FI_FIFO_READING = common dso_local global i32 0, align 4
@FI_FIFO_WRITING = common dso_local global i32 0, align 4
@IN2000_FIFO_SIZE = common dso_local global i32 0, align 4
@IO_FIFO = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32)* @transfer_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transfer_bytes(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.IN2000_hostdata*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.IN2000_hostdata*
  store %struct.IN2000_hostdata* %16, %struct.IN2000_hostdata** %5, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %56, label %22

22:                                               ; preds = %2
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %22
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 1
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %31, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* %36, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = call i64 @sg_virt(%struct.TYPE_11__* %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 3
  store i64 %52, i64* %55, align 8
  br label %56

56:                                               ; preds = %28, %22, %2
  %57 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %5, align 8
  %58 = load i32, i32* @WD_SYNCHRONOUS_TRANSFER, align 4
  %59 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %5, align 8
  %60 = getelementptr inbounds %struct.IN2000_hostdata, %struct.IN2000_hostdata* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i32, i32* %61, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @write_3393(%struct.IN2000_hostdata* %57, i32 %58, i32 %68)
  %70 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %5, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @write_3393_count(%struct.IN2000_hostdata* %70, i32 %74)
  %76 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %5, align 8
  %77 = load i32, i32* @WD_CONTROL, align 4
  %78 = load i32, i32* @CTRL_IDI, align 4
  %79 = load i32, i32* @CTRL_EDI, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @CTRL_BUS, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @write_3393(%struct.IN2000_hostdata* %76, i32 %77, i32 %82)
  %84 = load i32, i32* @IO_FIFO_WRITE, align 4
  %85 = call i32 @write1_io(i32 0, i32 %84)
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %129

88:                                               ; preds = %56
  %89 = load i32, i32* @IO_FIFO_READ, align 4
  %90 = call i32 @write1_io(i32 0, i32 %89)
  %91 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %5, align 8
  %92 = getelementptr inbounds %struct.IN2000_hostdata, %struct.IN2000_hostdata* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @L2_DATA, align 8
  %95 = icmp sge i64 %93, %94
  br i1 %95, label %108, label %96

96:                                               ; preds = %88
  %97 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %5, align 8
  %98 = getelementptr inbounds %struct.IN2000_hostdata, %struct.IN2000_hostdata* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @L2_BASIC, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %118

102:                                              ; preds = %96
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %102, %88
  %109 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %5, align 8
  %110 = load i32, i32* @WD_COMMAND_PHASE, align 4
  %111 = call i32 @write_3393(%struct.IN2000_hostdata* %109, i32 %110, i32 69)
  %112 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %5, align 8
  %113 = load i32, i32* @WD_CMD_SEL_ATN_XFER, align 4
  %114 = call i32 @write_3393_cmd(%struct.IN2000_hostdata* %112, i32 %113)
  %115 = load i8*, i8** @S_RUNNING_LEVEL2, align 8
  %116 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %5, align 8
  %117 = getelementptr inbounds %struct.IN2000_hostdata, %struct.IN2000_hostdata* %116, i32 0, i32 4
  store i8* %115, i8** %117, align 8
  br label %122

118:                                              ; preds = %102, %96
  %119 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %5, align 8
  %120 = load i32, i32* @WD_CMD_TRANS_INFO, align 4
  %121 = call i32 @write_3393_cmd(%struct.IN2000_hostdata* %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %108
  %123 = load i32, i32* @FI_FIFO_READING, align 4
  %124 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %5, align 8
  %125 = getelementptr inbounds %struct.IN2000_hostdata, %struct.IN2000_hostdata* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 2
  store i32 0, i32* %128, align 8
  br label %204

129:                                              ; preds = %56
  %130 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %5, align 8
  %131 = getelementptr inbounds %struct.IN2000_hostdata, %struct.IN2000_hostdata* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @L2_DATA, align 8
  %134 = icmp sge i64 %132, %133
  br i1 %134, label %147, label %135

135:                                              ; preds = %129
  %136 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %5, align 8
  %137 = getelementptr inbounds %struct.IN2000_hostdata, %struct.IN2000_hostdata* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @L2_BASIC, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %157

141:                                              ; preds = %135
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %141, %129
  %148 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %5, align 8
  %149 = load i32, i32* @WD_COMMAND_PHASE, align 4
  %150 = call i32 @write_3393(%struct.IN2000_hostdata* %148, i32 %149, i32 69)
  %151 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %5, align 8
  %152 = load i32, i32* @WD_CMD_SEL_ATN_XFER, align 4
  %153 = call i32 @write_3393_cmd(%struct.IN2000_hostdata* %151, i32 %152)
  %154 = load i8*, i8** @S_RUNNING_LEVEL2, align 8
  %155 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %5, align 8
  %156 = getelementptr inbounds %struct.IN2000_hostdata, %struct.IN2000_hostdata* %155, i32 0, i32 4
  store i8* %154, i8** %156, align 8
  br label %161

157:                                              ; preds = %141, %135
  %158 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %5, align 8
  %159 = load i32, i32* @WD_CMD_TRANS_INFO, align 4
  %160 = call i32 @write_3393_cmd(%struct.IN2000_hostdata* %158, i32 %159)
  br label %161

161:                                              ; preds = %157, %147
  %162 = load i32, i32* @FI_FIFO_WRITING, align 4
  %163 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %5, align 8
  %164 = getelementptr inbounds %struct.IN2000_hostdata, %struct.IN2000_hostdata* %163, i32 0, i32 3
  store i32 %162, i32* %164, align 4
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = inttoptr i64 %168 to i16*
  store i16* %169, i16** %6, align 8
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* @IN2000_FIFO_SIZE, align 4
  %175 = icmp sgt i32 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %161
  %177 = load i32, i32* @IN2000_FIFO_SIZE, align 4
  store i32 %177, i32* %8, align 4
  br label %178

178:                                              ; preds = %176, %161
  %179 = load i32, i32* %8, align 4
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 2
  store i32 %179, i32* %182, align 8
  %183 = load i32, i32* %8, align 4
  %184 = ashr i32 %183, 1
  store i32 %184, i32* %8, align 4
  %185 = load %struct.IN2000_hostdata*, %struct.IN2000_hostdata** %5, align 8
  %186 = getelementptr inbounds %struct.IN2000_hostdata, %struct.IN2000_hostdata* %185, i32 0, i32 2
  %187 = load i16, i16* %186, align 8
  %188 = zext i16 %187 to i32
  %189 = load i16, i16* @IO_FIFO, align 2
  %190 = zext i16 %189 to i32
  %191 = add nsw i32 %188, %190
  %192 = trunc i32 %191 to i16
  store i16 %192, i16* %7, align 2
  br label %193

193:                                              ; preds = %197, %178
  %194 = load i32, i32* %8, align 4
  %195 = add nsw i32 %194, -1
  store i32 %195, i32* %8, align 4
  %196 = icmp ne i32 %194, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %193
  %198 = load i16*, i16** %6, align 8
  %199 = getelementptr inbounds i16, i16* %198, i32 1
  store i16* %199, i16** %6, align 8
  %200 = load i16, i16* %198, align 2
  %201 = zext i16 %200 to i32
  %202 = load i16, i16* @IO_FIFO, align 2
  %203 = call i32 @write2_io(i32 %201, i16 zeroext %202)
  br label %193

204:                                              ; preds = %122, %193
  ret void
}

declare dso_local i64 @sg_virt(%struct.TYPE_11__*) #1

declare dso_local i32 @write_3393(%struct.IN2000_hostdata*, i32, i32) #1

declare dso_local i32 @write_3393_count(%struct.IN2000_hostdata*, i32) #1

declare dso_local i32 @write1_io(i32, i32) #1

declare dso_local i32 @write_3393_cmd(%struct.IN2000_hostdata*, i32) #1

declare dso_local i32 @write2_io(i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
