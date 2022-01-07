; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_send_frames.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_send_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i64, i32, %struct.TYPE_10__, i32, i32, %struct.TYPE_11__*, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, i64 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@FLG_LLI_L1WAKEUP = common dso_local global i32 0, align 4
@PACKET_NOACK = common dso_local global i64 0, align 8
@B_ACKPENDING = common dso_local global i32 0, align 4
@L1_MODE_FAX = common dso_local global i64 0, align 8
@PCTRL_CMD_FTH = common dso_local global i64 0, align 8
@BC_FLG_LASTDATA = common dso_local global i32 0, align 4
@BC_FLG_NMD_DATA = common dso_local global i32 0, align 4
@PCTRL_CMD_FTM = common dso_local global i64 0, align 8
@BC_FLG_DLEETX = common dso_local global i32 0, align 4
@BC_FLG_BUSY = common dso_local global i32 0, align 4
@ISAR_HIS_SDATA = common dso_local global i32 0, align 4
@BC_FLG_LL_OK = common dso_local global i32 0, align 4
@B_LL_CONNECT = common dso_local global i32 0, align 4
@B_XMTBUFREADY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*)* @send_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_frames(%struct.BCState* %0) #0 {
  %2 = alloca %struct.BCState*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.BCState* %0, %struct.BCState** %2, align 8
  %5 = load %struct.BCState*, %struct.BCState** %2, align 8
  %6 = getelementptr inbounds %struct.BCState, %struct.BCState* %5, i32 0, i32 5
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %8 = icmp ne %struct.TYPE_11__* %7, null
  br i1 %8, label %9, label %123

9:                                                ; preds = %1
  %10 = load %struct.BCState*, %struct.BCState** %2, align 8
  %11 = getelementptr inbounds %struct.BCState, %struct.BCState* %10, i32 0, i32 5
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load %struct.BCState*, %struct.BCState** %2, align 8
  %18 = call i32 @isar_fill_fifo(%struct.BCState* %17)
  br label %190

19:                                               ; preds = %9
  %20 = load i32, i32* @FLG_LLI_L1WAKEUP, align 4
  %21 = load %struct.BCState*, %struct.BCState** %2, align 8
  %22 = getelementptr inbounds %struct.BCState, %struct.BCState* %21, i32 0, i32 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = call i64 @test_bit(i32 %20, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %59

28:                                               ; preds = %19
  %29 = load i64, i64* @PACKET_NOACK, align 8
  %30 = load %struct.BCState*, %struct.BCState** %2, align 8
  %31 = getelementptr inbounds %struct.BCState, %struct.BCState* %30, i32 0, i32 5
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %29, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %28
  %37 = load %struct.BCState*, %struct.BCState** %2, align 8
  %38 = getelementptr inbounds %struct.BCState, %struct.BCState* %37, i32 0, i32 6
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @spin_lock_irqsave(i32* %38, i32 %39)
  %41 = load %struct.BCState*, %struct.BCState** %2, align 8
  %42 = getelementptr inbounds %struct.BCState, %struct.BCState* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.BCState*, %struct.BCState** %2, align 8
  %47 = getelementptr inbounds %struct.BCState, %struct.BCState* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %45
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 4
  %52 = load %struct.BCState*, %struct.BCState** %2, align 8
  %53 = getelementptr inbounds %struct.BCState, %struct.BCState* %52, i32 0, i32 6
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i32 %54)
  %56 = load %struct.BCState*, %struct.BCState** %2, align 8
  %57 = load i32, i32* @B_ACKPENDING, align 4
  %58 = call i32 @schedule_event(%struct.BCState* %56, i32 %57)
  br label %59

59:                                               ; preds = %36, %28, %19
  %60 = load %struct.BCState*, %struct.BCState** %2, align 8
  %61 = getelementptr inbounds %struct.BCState, %struct.BCState* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @L1_MODE_FAX, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %111

65:                                               ; preds = %59
  %66 = load %struct.BCState*, %struct.BCState** %2, align 8
  %67 = getelementptr inbounds %struct.BCState, %struct.BCState* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PCTRL_CMD_FTH, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %65
  %74 = load i32, i32* @BC_FLG_LASTDATA, align 4
  %75 = load %struct.BCState*, %struct.BCState** %2, align 8
  %76 = getelementptr inbounds %struct.BCState, %struct.BCState* %75, i32 0, i32 1
  %77 = call i64 @test_bit(i32 %74, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load i32, i32* @BC_FLG_NMD_DATA, align 4
  %81 = load %struct.BCState*, %struct.BCState** %2, align 8
  %82 = getelementptr inbounds %struct.BCState, %struct.BCState* %81, i32 0, i32 1
  %83 = call i32 @test_and_set_bit(i32 %80, i32* %82)
  br label %84

84:                                               ; preds = %79, %73
  br label %110

85:                                               ; preds = %65
  %86 = load %struct.BCState*, %struct.BCState** %2, align 8
  %87 = getelementptr inbounds %struct.BCState, %struct.BCState* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @PCTRL_CMD_FTM, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %109

93:                                               ; preds = %85
  %94 = load i32, i32* @BC_FLG_DLEETX, align 4
  %95 = load %struct.BCState*, %struct.BCState** %2, align 8
  %96 = getelementptr inbounds %struct.BCState, %struct.BCState* %95, i32 0, i32 1
  %97 = call i64 @test_bit(i32 %94, i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %93
  %100 = load i32, i32* @BC_FLG_LASTDATA, align 4
  %101 = load %struct.BCState*, %struct.BCState** %2, align 8
  %102 = getelementptr inbounds %struct.BCState, %struct.BCState* %101, i32 0, i32 1
  %103 = call i32 @test_and_set_bit(i32 %100, i32* %102)
  %104 = load i32, i32* @BC_FLG_NMD_DATA, align 4
  %105 = load %struct.BCState*, %struct.BCState** %2, align 8
  %106 = getelementptr inbounds %struct.BCState, %struct.BCState* %105, i32 0, i32 1
  %107 = call i32 @test_and_set_bit(i32 %104, i32* %106)
  br label %108

108:                                              ; preds = %99, %93
  br label %109

109:                                              ; preds = %108, %85
  br label %110

110:                                              ; preds = %109, %84
  br label %111

111:                                              ; preds = %110, %59
  %112 = load %struct.BCState*, %struct.BCState** %2, align 8
  %113 = getelementptr inbounds %struct.BCState, %struct.BCState* %112, i32 0, i32 5
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = call i32 @dev_kfree_skb_any(%struct.TYPE_11__* %114)
  %116 = load %struct.BCState*, %struct.BCState** %2, align 8
  %117 = getelementptr inbounds %struct.BCState, %struct.BCState* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 2
  store i64 0, i64* %119, align 8
  %120 = load %struct.BCState*, %struct.BCState** %2, align 8
  %121 = getelementptr inbounds %struct.BCState, %struct.BCState* %120, i32 0, i32 5
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %121, align 8
  br label %122

122:                                              ; preds = %111
  br label %123

123:                                              ; preds = %122, %1
  %124 = load %struct.BCState*, %struct.BCState** %2, align 8
  %125 = getelementptr inbounds %struct.BCState, %struct.BCState* %124, i32 0, i32 4
  %126 = call %struct.TYPE_11__* @skb_dequeue(i32* %125)
  %127 = load %struct.BCState*, %struct.BCState** %2, align 8
  %128 = getelementptr inbounds %struct.BCState, %struct.BCState* %127, i32 0, i32 5
  store %struct.TYPE_11__* %126, %struct.TYPE_11__** %128, align 8
  %129 = icmp ne %struct.TYPE_11__* %126, null
  br i1 %129, label %130, label %141

130:                                              ; preds = %123
  %131 = load %struct.BCState*, %struct.BCState** %2, align 8
  %132 = getelementptr inbounds %struct.BCState, %struct.BCState* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 2
  store i64 0, i64* %134, align 8
  %135 = load i32, i32* @BC_FLG_BUSY, align 4
  %136 = load %struct.BCState*, %struct.BCState** %2, align 8
  %137 = getelementptr inbounds %struct.BCState, %struct.BCState* %136, i32 0, i32 1
  %138 = call i32 @test_and_set_bit(i32 %135, i32* %137)
  %139 = load %struct.BCState*, %struct.BCState** %2, align 8
  %140 = call i32 @isar_fill_fifo(%struct.BCState* %139)
  br label %190

141:                                              ; preds = %123
  %142 = load i32, i32* @BC_FLG_DLEETX, align 4
  %143 = load %struct.BCState*, %struct.BCState** %2, align 8
  %144 = getelementptr inbounds %struct.BCState, %struct.BCState* %143, i32 0, i32 1
  %145 = call i64 @test_and_clear_bit(i32 %142, i32* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %182

147:                                              ; preds = %141
  %148 = load i32, i32* @BC_FLG_LASTDATA, align 4
  %149 = load %struct.BCState*, %struct.BCState** %2, align 8
  %150 = getelementptr inbounds %struct.BCState, %struct.BCState* %149, i32 0, i32 1
  %151 = call i64 @test_and_clear_bit(i32 %148, i32* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %177

153:                                              ; preds = %147
  %154 = load i32, i32* @BC_FLG_NMD_DATA, align 4
  %155 = load %struct.BCState*, %struct.BCState** %2, align 8
  %156 = getelementptr inbounds %struct.BCState, %struct.BCState* %155, i32 0, i32 1
  %157 = call i64 @test_and_clear_bit(i32 %154, i32* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %172

159:                                              ; preds = %153
  store i32 0, i32* %4, align 4
  %160 = load %struct.BCState*, %struct.BCState** %2, align 8
  %161 = getelementptr inbounds %struct.BCState, %struct.BCState* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.BCState*, %struct.BCState** %2, align 8
  %164 = getelementptr inbounds %struct.BCState, %struct.BCState* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @SET_DPS(i32 %167)
  %169 = load i32, i32* @ISAR_HIS_SDATA, align 4
  %170 = or i32 %168, %169
  %171 = call i32 @sendmsg(i32 %162, i32 %170, i32 1, i32 1, i32* %4)
  br label %172

172:                                              ; preds = %159, %153
  %173 = load i32, i32* @BC_FLG_LL_OK, align 4
  %174 = load %struct.BCState*, %struct.BCState** %2, align 8
  %175 = getelementptr inbounds %struct.BCState, %struct.BCState* %174, i32 0, i32 1
  %176 = call i32 @test_and_set_bit(i32 %173, i32* %175)
  br label %181

177:                                              ; preds = %147
  %178 = load %struct.BCState*, %struct.BCState** %2, align 8
  %179 = load i32, i32* @B_LL_CONNECT, align 4
  %180 = call i32 @schedule_event(%struct.BCState* %178, i32 %179)
  br label %181

181:                                              ; preds = %177, %172
  br label %182

182:                                              ; preds = %181, %141
  %183 = load i32, i32* @BC_FLG_BUSY, align 4
  %184 = load %struct.BCState*, %struct.BCState** %2, align 8
  %185 = getelementptr inbounds %struct.BCState, %struct.BCState* %184, i32 0, i32 1
  %186 = call i64 @test_and_clear_bit(i32 %183, i32* %185)
  %187 = load %struct.BCState*, %struct.BCState** %2, align 8
  %188 = load i32, i32* @B_XMTBUFREADY, align 4
  %189 = call i32 @schedule_event(%struct.BCState* %187, i32 %188)
  br label %190

190:                                              ; preds = %16, %182, %130
  ret void
}

declare dso_local i32 @isar_fill_fifo(%struct.BCState*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @schedule_event(%struct.BCState*, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @skb_dequeue(i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @sendmsg(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @SET_DPS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
