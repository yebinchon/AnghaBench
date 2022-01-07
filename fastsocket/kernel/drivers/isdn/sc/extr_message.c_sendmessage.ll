; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/sc/extr_message.c_sendmessage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/sc/extr_message.c_sendmessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32, i32, i32*, i64, i32, i64 }
%struct.TYPE_7__ = type { i64, i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Invalid param: %d is not a valid card id\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@sc_adapter = common dso_local global %struct.TYPE_8__** null, align 8
@CMPID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"%s: Attempt to send CM message with engine up\0A\00", align 1
@ESRCH = common dso_local global i32 0, align 4
@CEPID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"%s: Attempt to send CE message with engine down\0A\00", align 1
@MSG_LEN = common dso_local global i32 0, align 4
@MSG_DATA_LEN = common dso_local global i32 0, align 4
@FIFO_STATUS = common dso_local global i64 0, align 8
@WF_NOT_FULL = common dso_local global i32 0, align 4
@MAX_MESSAGES = common dso_local global i32 0, align 4
@FIFO_WRITE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [85 x i8] c"%s: Sent Message seq:%d pid:%d time:%d cnt:%d (type,class,code):(%d,%d,%d) link:%d\0A \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sendmessage(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca %struct.TYPE_6__, align 4
  %20 = alloca i64, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @IS_VALID_CARD(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  br label %242

29:                                               ; preds = %8
  %30 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @sc_adapter, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %30, i64 %32
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 7
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %29
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @CMPID, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @sc_adapter, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %43, i64 %45
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @ESRCH, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %9, align 4
  br label %242

53:                                               ; preds = %38, %29
  %54 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @sc_adapter, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %54, i64 %56
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 7
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @CEPID, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @sc_adapter, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %67, i64 %69
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @ESRCH, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %9, align 4
  br label %242

77:                                               ; preds = %62, %53
  %78 = load i32, i32* @MSG_LEN, align 4
  %79 = call i32 @memset(%struct.TYPE_6__* %19, i32 0, i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 4, i32* %80, align 4
  %81 = load i32, i32* %12, align 4
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* %13, align 4
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* %14, align 4
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* %15, align 4
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 4
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* %16, align 4
  %90 = icmp ugt i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %77
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* @MSG_DATA_LEN, align 4
  %94 = icmp ugt i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* @MSG_DATA_LEN, align 4
  store i32 %96, i32* %16, align 4
  br label %97

97:                                               ; preds = %95, %91
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 8
  %99 = load i32*, i32** %17, align 8
  %100 = load i32, i32* %16, align 4
  %101 = call i32 @memcpy(i32* %98, i32* %99, i32 %100)
  %102 = load i32, i32* %16, align 4
  %103 = add i32 %102, 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %97, %77
  %106 = load i32, i32* %11, align 4
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 5
  store i32 %106, i32* %107, align 4
  %108 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @sc_adapter, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %108, i64 %110
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  %116 = srem i32 %114, 256
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 6
  store i32 %116, i32* %117, align 4
  br label %118

118:                                              ; preds = %134, %105
  %119 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @sc_adapter, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %119, i64 %121
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 4
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* @FIFO_STATUS, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @inb(i32 %128)
  %130 = load i32, i32* @WF_NOT_FULL, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  br i1 %133, label %134, label %136

134:                                              ; preds = %118
  %135 = call i32 @udelay(i32 1)
  br label %118

136:                                              ; preds = %118
  %137 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @sc_adapter, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %137, i64 %139
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 3
  %143 = load i64, i64* %20, align 8
  %144 = call i32 @spin_lock_irqsave(i32* %142, i64 %143)
  %145 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @sc_adapter, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %145, i64 %147
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = ashr i32 %151, 14
  %153 = or i32 %152, 128
  %154 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @sc_adapter, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %154, i64 %156
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 4
  %160 = load i32*, i32** %159, align 8
  %161 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @sc_adapter, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %161, i64 %163
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds i32, i32* %160, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @outb(i32 %153, i32 %169)
  %171 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @sc_adapter, align 8
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %171, i64 %173
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 5
  %177 = load i64, i64* %176, align 8
  %178 = inttoptr i64 %177 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %178, %struct.TYPE_7__** %18, align 8
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds i32, i32* %181, i64 %184
  %186 = load i32, i32* @MSG_LEN, align 4
  %187 = call i32 @memcpy_toio(i32* %185, %struct.TYPE_6__* %19, i32 %186)
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = add i64 %190, 1
  %192 = load i32, i32* @MAX_MESSAGES, align 4
  %193 = sext i32 %192 to i64
  %194 = urem i64 %191, %193
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  store i64 %194, i64* %196, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 6
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @sc_adapter, align 8
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %199, i64 %201
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 4
  %205 = load i32*, i32** %204, align 8
  %206 = load i64, i64* @FIFO_WRITE, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @outb(i32 %198, i32 %208)
  %210 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @sc_adapter, align 8
  %211 = load i32, i32* %10, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %210, i64 %212
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 3
  %216 = load i64, i64* %20, align 8
  %217 = call i32 @spin_unlock_irqrestore(i32* %215, i64 %216)
  %218 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @sc_adapter, align 8
  %219 = load i32, i32* %10, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %218, i64 %220
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 6
  %226 = load i32, i32* %225, align 4
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 5
  %228 = load i32, i32* %227, align 4
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 7
  %230 = load i32, i32* %229, align 4
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 4
  %240 = load i32, i32* %239, align 4
  %241 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0), i32 %224, i32 %226, i32 %228, i32 %230, i32 %232, i32 %234, i32 %236, i32 %238, i32 %240)
  store i32 0, i32* %9, align 4
  br label %242

242:                                              ; preds = %136, %66, %42, %24
  %243 = load i32, i32* %9, align 4
  ret i32 %243
}

declare dso_local i32 @IS_VALID_CARD(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @memcpy_toio(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
