; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_slgt_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_slgt_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_2__, %struct.slgt_info**, i64 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"slgt_interrupt irq=%d entry\0A\00", align 1
@GSR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"%s gsr=%08x\0A\00", align 1
@BIT8 = common dso_local global i32 0, align 4
@BIT16 = common dso_local global i32 0, align 4
@BIT17 = common dso_local global i32 0, align 4
@IOSR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"%s iosr=%08x\0A\00", align 1
@IOVR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"%s bh queued\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"slgt_interrupt irq=%d exit\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @slgt_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slgt_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.slgt_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.slgt_info*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.slgt_info*
  store %struct.slgt_info* %12, %struct.slgt_info** %5, align 8
  %13 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %14 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @DBGISR(i8* %17)
  %19 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %20 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %19, i32 0, i32 4
  %21 = call i32 @spin_lock(i32* %20)
  br label %22

22:                                               ; preds = %108, %2
  %23 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %24 = load i32, i32* @GSR, align 4
  %25 = call i32 @rd_reg32(%struct.slgt_info* %23, i32 %24)
  %26 = and i32 %25, -256
  store i32 %26, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %109

28:                                               ; preds = %22
  %29 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %30 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @DBGISR(i8* %34)
  %36 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %37 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %105, %28
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %41 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ult i32 %39, %42
  br i1 %43, label %44, label %108

44:                                               ; preds = %38
  %45 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %46 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %45, i32 0, i32 11
  %47 = load %struct.slgt_info**, %struct.slgt_info*** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %47, i64 %49
  %51 = load %struct.slgt_info*, %struct.slgt_info** %50, align 8
  %52 = icmp eq %struct.slgt_info* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %105

54:                                               ; preds = %44
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @BIT8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = shl i32 %56, %57
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %63 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %62, i32 0, i32 11
  %64 = load %struct.slgt_info**, %struct.slgt_info*** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %64, i64 %66
  %68 = load %struct.slgt_info*, %struct.slgt_info** %67, align 8
  %69 = call i32 @isr_serial(%struct.slgt_info* %68)
  br label %70

70:                                               ; preds = %61, %54
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @BIT16, align 4
  %73 = load i32, i32* %7, align 4
  %74 = mul i32 %73, 2
  %75 = shl i32 %72, %74
  %76 = and i32 %71, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %70
  %79 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %80 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %79, i32 0, i32 11
  %81 = load %struct.slgt_info**, %struct.slgt_info*** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %81, i64 %83
  %85 = load %struct.slgt_info*, %struct.slgt_info** %84, align 8
  %86 = call i32 @isr_rdma(%struct.slgt_info* %85)
  br label %87

87:                                               ; preds = %78, %70
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @BIT17, align 4
  %90 = load i32, i32* %7, align 4
  %91 = mul i32 %90, 2
  %92 = shl i32 %89, %91
  %93 = and i32 %88, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %87
  %96 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %97 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %96, i32 0, i32 11
  %98 = load %struct.slgt_info**, %struct.slgt_info*** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %98, i64 %100
  %102 = load %struct.slgt_info*, %struct.slgt_info** %101, align 8
  %103 = call i32 @isr_tdma(%struct.slgt_info* %102)
  br label %104

104:                                              ; preds = %95, %87
  br label %105

105:                                              ; preds = %104, %53
  %106 = load i32, i32* %7, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %38

108:                                              ; preds = %38
  br label %22

109:                                              ; preds = %22
  %110 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %111 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %110, i32 0, i32 12
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %167

114:                                              ; preds = %109
  br label %115

115:                                              ; preds = %165, %114
  %116 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %117 = load i32, i32* @IOSR, align 4
  %118 = call i32 @rd_reg32(%struct.slgt_info* %116, i32 %117)
  store i32 %118, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %166

120:                                              ; preds = %115
  %121 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %122 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = zext i32 %124 to i64
  %126 = inttoptr i64 %125 to i8*
  %127 = call i32 @DBGISR(i8* %126)
  %128 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %129 = load i32, i32* @IOVR, align 4
  %130 = call i32 @rd_reg32(%struct.slgt_info* %128, i32 %129)
  store i32 %130, i32* %8, align 4
  %131 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %132 = load i32, i32* @IOSR, align 4
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @wr_reg32(%struct.slgt_info* %131, i32 %132, i32 %133)
  store i32 0, i32* %7, align 4
  br label %135

135:                                              ; preds = %162, %120
  %136 = load i32, i32* %7, align 4
  %137 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %138 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp ult i32 %136, %139
  br i1 %140, label %141, label %165

141:                                              ; preds = %135
  %142 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %143 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %142, i32 0, i32 11
  %144 = load %struct.slgt_info**, %struct.slgt_info*** %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %144, i64 %146
  %148 = load %struct.slgt_info*, %struct.slgt_info** %147, align 8
  %149 = icmp ne %struct.slgt_info* %148, null
  br i1 %149, label %150, label %161

150:                                              ; preds = %141
  %151 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %152 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %151, i32 0, i32 11
  %153 = load %struct.slgt_info**, %struct.slgt_info*** %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %153, i64 %155
  %157 = load %struct.slgt_info*, %struct.slgt_info** %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @isr_gpio(%struct.slgt_info* %157, i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %150, %141
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %7, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %7, align 4
  br label %135

165:                                              ; preds = %135
  br label %115

166:                                              ; preds = %115
  br label %167

167:                                              ; preds = %166, %109
  store i32 0, i32* %7, align 4
  br label %168

168:                                              ; preds = %223, %167
  %169 = load i32, i32* %7, align 4
  %170 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %171 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp ult i32 %169, %172
  br i1 %173, label %174, label %226

174:                                              ; preds = %168
  %175 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %176 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %175, i32 0, i32 11
  %177 = load %struct.slgt_info**, %struct.slgt_info*** %176, align 8
  %178 = load i32, i32* %7, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %177, i64 %179
  %181 = load %struct.slgt_info*, %struct.slgt_info** %180, align 8
  store %struct.slgt_info* %181, %struct.slgt_info** %10, align 8
  %182 = load %struct.slgt_info*, %struct.slgt_info** %10, align 8
  %183 = icmp ne %struct.slgt_info* %182, null
  br i1 %183, label %184, label %222

184:                                              ; preds = %174
  %185 = load %struct.slgt_info*, %struct.slgt_info** %10, align 8
  %186 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %185, i32 0, i32 10
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %195, label %190

190:                                              ; preds = %184
  %191 = load %struct.slgt_info*, %struct.slgt_info** %10, align 8
  %192 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %191, i32 0, i32 9
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %222

195:                                              ; preds = %190, %184
  %196 = load %struct.slgt_info*, %struct.slgt_info** %10, align 8
  %197 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %196, i32 0, i32 8
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %222

200:                                              ; preds = %195
  %201 = load %struct.slgt_info*, %struct.slgt_info** %10, align 8
  %202 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %201, i32 0, i32 7
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %222, label %205

205:                                              ; preds = %200
  %206 = load %struct.slgt_info*, %struct.slgt_info** %10, align 8
  %207 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %222, label %210

210:                                              ; preds = %205
  %211 = load %struct.slgt_info*, %struct.slgt_info** %10, align 8
  %212 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 8
  %214 = sext i32 %213 to i64
  %215 = inttoptr i64 %214 to i8*
  %216 = call i32 @DBGISR(i8* %215)
  %217 = load %struct.slgt_info*, %struct.slgt_info** %10, align 8
  %218 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %217, i32 0, i32 5
  %219 = call i32 @schedule_work(i32* %218)
  %220 = load %struct.slgt_info*, %struct.slgt_info** %10, align 8
  %221 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %220, i32 0, i32 2
  store i32 1, i32* %221, align 8
  br label %222

222:                                              ; preds = %210, %205, %200, %195, %190, %174
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %7, align 4
  %225 = add i32 %224, 1
  store i32 %225, i32* %7, align 4
  br label %168

226:                                              ; preds = %168
  %227 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %228 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %227, i32 0, i32 4
  %229 = call i32 @spin_unlock(i32* %228)
  %230 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %231 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  %234 = inttoptr i64 %233 to i8*
  %235 = call i32 @DBGISR(i8* %234)
  %236 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %236
}

declare dso_local i32 @DBGISR(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rd_reg32(%struct.slgt_info*, i32) #1

declare dso_local i32 @isr_serial(%struct.slgt_info*) #1

declare dso_local i32 @isr_rdma(%struct.slgt_info*) #1

declare dso_local i32 @isr_tdma(%struct.slgt_info*) #1

declare dso_local i32 @wr_reg32(%struct.slgt_info*, i32, i32) #1

declare dso_local i32 @isr_gpio(%struct.slgt_info*, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
