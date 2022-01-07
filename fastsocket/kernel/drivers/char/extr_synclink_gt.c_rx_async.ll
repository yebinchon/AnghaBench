; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_rx_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_rx_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, i8, i32, i32, i32, %struct.slgt_desc*, %struct.mgsl_icount, %struct.TYPE_2__ }
%struct.slgt_desc = type { i8* }
%struct.mgsl_icount = type { i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"%s rx_async count=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@BIT1 = common dso_local global i8 0, align 1
@BIT0 = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*)* @rx_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_async(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.mgsl_icount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct.slgt_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  %15 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %16 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %15, i32 0, i32 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.tty_struct*, %struct.tty_struct** %17, align 8
  store %struct.tty_struct* %18, %struct.tty_struct** %3, align 8
  %19 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %20 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %19, i32 0, i32 7
  store %struct.mgsl_icount* %20, %struct.mgsl_icount** %4, align 8
  %21 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %22 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %21, i32 0, i32 6
  %23 = load %struct.slgt_desc*, %struct.slgt_desc** %22, align 8
  store %struct.slgt_desc* %23, %struct.slgt_desc** %9, align 8
  store i32 0, i32* %12, align 4
  %24 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %25 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %6, align 4
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %198, %1
  %28 = load %struct.slgt_desc*, %struct.slgt_desc** %9, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %28, i64 %30
  %32 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @desc_complete(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %199

36:                                               ; preds = %27
  %37 = load %struct.slgt_desc*, %struct.slgt_desc** %9, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %37, i64 %39
  %41 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @desc_count(i8* %42)
  %44 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %45 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %43, %46
  store i32 %47, i32* %11, align 4
  %48 = load %struct.slgt_desc*, %struct.slgt_desc** %9, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %48, i64 %50
  %52 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %55 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %53, i64 %57
  store i8* %58, i8** %7, align 8
  %59 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %60 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 @DBGISR(i8* %64)
  %66 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @DBGDATA(%struct.slgt_info* %66, i8* %67, i32 %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %159, %36
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %164

74:                                               ; preds = %70
  %75 = load i8*, i8** %7, align 8
  %76 = load i8, i8* %75, align 1
  store i8 %76, i8* %14, align 1
  %77 = load %struct.mgsl_icount*, %struct.mgsl_icount** %4, align 8
  %78 = getelementptr inbounds %struct.mgsl_icount, %struct.mgsl_icount* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  store i32 0, i32* %13, align 4
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = load i8, i8* @BIT1, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8, i8* @BIT0, align 1
  %88 = zext i8 %87 to i32
  %89 = add nsw i32 %86, %88
  %90 = and i32 %84, %89
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %8, align 1
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %93, label %148

93:                                               ; preds = %74
  %94 = load i8, i8* %8, align 1
  %95 = zext i8 %94 to i32
  %96 = load i8, i8* @BIT1, align 1
  %97 = zext i8 %96 to i32
  %98 = and i32 %95, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load %struct.mgsl_icount*, %struct.mgsl_icount** %4, align 8
  %102 = getelementptr inbounds %struct.mgsl_icount, %struct.mgsl_icount* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %118

105:                                              ; preds = %93
  %106 = load i8, i8* %8, align 1
  %107 = zext i8 %106 to i32
  %108 = load i8, i8* @BIT0, align 1
  %109 = zext i8 %108 to i32
  %110 = and i32 %107, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %105
  %113 = load %struct.mgsl_icount*, %struct.mgsl_icount** %4, align 8
  %114 = getelementptr inbounds %struct.mgsl_icount, %struct.mgsl_icount* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %112, %105
  br label %118

118:                                              ; preds = %117, %100
  %119 = load i8, i8* %8, align 1
  %120 = zext i8 %119 to i32
  %121 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %122 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %121, i32 0, i32 2
  %123 = load i8, i8* %122, align 8
  %124 = zext i8 %123 to i32
  %125 = and i32 %120, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  br label %159

128:                                              ; preds = %118
  %129 = load i8, i8* %8, align 1
  %130 = zext i8 %129 to i32
  %131 = load i8, i8* @BIT1, align 1
  %132 = zext i8 %131 to i32
  %133 = and i32 %130, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = load i32, i32* @TTY_PARITY, align 4
  store i32 %136, i32* %13, align 4
  br label %147

137:                                              ; preds = %128
  %138 = load i8, i8* %8, align 1
  %139 = zext i8 %138 to i32
  %140 = load i8, i8* @BIT0, align 1
  %141 = zext i8 %140 to i32
  %142 = and i32 %139, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %137
  %145 = load i32, i32* @TTY_FRAME, align 4
  store i32 %145, i32* %13, align 4
  br label %146

146:                                              ; preds = %144, %137
  br label %147

147:                                              ; preds = %146, %135
  br label %148

148:                                              ; preds = %147, %74
  %149 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %150 = icmp ne %struct.tty_struct* %149, null
  br i1 %150, label %151, label %158

151:                                              ; preds = %148
  %152 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %153 = load i8, i8* %14, align 1
  %154 = load i32, i32* %13, align 4
  %155 = call i32 @tty_insert_flip_char(%struct.tty_struct* %152, i8 zeroext %153, i32 %154)
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %151, %148
  br label %159

159:                                              ; preds = %158, %127
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, 2
  store i32 %161, i32* %10, align 4
  %162 = load i8*, i8** %7, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 2
  store i8* %163, i8** %7, align 8
  br label %70

164:                                              ; preds = %70
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* %11, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %179

168:                                              ; preds = %164
  %169 = load i32, i32* %10, align 4
  %170 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %171 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, %169
  store i32 %173, i32* %171, align 4
  %174 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %175 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %174, i32 0, i32 4
  %176 = load i64, i64* @jiffies, align 8
  %177 = add nsw i64 %176, 1
  %178 = call i32 @mod_timer(i32* %175, i64 %177)
  br label %199

179:                                              ; preds = %164
  %180 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %181 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %180, i32 0, i32 1
  store i32 0, i32* %181, align 4
  %182 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* %6, align 4
  %185 = call i32 @free_rbufs(%struct.slgt_info* %182, i32 %183, i32 %184)
  %186 = load i32, i32* %6, align 4
  %187 = add i32 %186, 1
  store i32 %187, i32* %6, align 4
  %188 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %189 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %187, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %179
  store i32 0, i32* %6, align 4
  br label %193

193:                                              ; preds = %192, %179
  %194 = load i32, i32* %6, align 4
  %195 = load i32, i32* %5, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %193
  br label %199

198:                                              ; preds = %193
  br label %27

199:                                              ; preds = %197, %168, %27
  %200 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %201 = icmp ne %struct.tty_struct* %200, null
  br i1 %201, label %202, label %208

202:                                              ; preds = %199
  %203 = load i32, i32* %12, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %202
  %206 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %207 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %206)
  br label %208

208:                                              ; preds = %205, %202, %199
  ret void
}

declare dso_local i64 @desc_complete(i8*) #1

declare dso_local i32 @desc_count(i8*) #1

declare dso_local i32 @DBGISR(i8*) #1

declare dso_local i32 @DBGDATA(%struct.slgt_info*, i8*, i32, i8*) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i8 zeroext, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @free_rbufs(%struct.slgt_info*, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
