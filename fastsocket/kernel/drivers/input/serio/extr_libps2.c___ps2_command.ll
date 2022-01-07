; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_libps2.c___ps2_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_libps2.c___ps2_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2dev = type { i32, i32, i8*, i32, i32 }

@PS2_CMD_GETID = common dso_local global i32 0, align 4
@PS2_FLAG_WAITID = common dso_local global i32 0, align 4
@PS2_CMD_RESET_BAT = common dso_local global i32 0, align 4
@PS2_FLAG_CMD1 = common dso_local global i32 0, align 4
@PS2_FLAG_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ps2_command(%struct.ps2dev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ps2dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ps2dev* %0, %struct.ps2dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = ashr i32 %13, 12
  %15 = and i32 %14, 15
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = ashr i32 %16, 8
  %18 = and i32 %17, 15
  store i32 %18, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ugt i64 %20, 8
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = call i32 @WARN_ON(i32 1)
  store i32 -1, i32* %4, align 4
  br label %219

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = call i32 @WARN_ON(i32 1)
  store i32 -1, i32* %4, align 4
  br label %219

32:                                               ; preds = %27, %24
  %33 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %34 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @serio_pause_rx(i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @PS2_CMD_GETID, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @PS2_FLAG_WAITID, align 4
  br label %43

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  %45 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %46 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %49 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %79

52:                                               ; preds = %43
  %53 = load i8*, i8** %6, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %79

55:                                               ; preds = %52
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %75, %55
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %56
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %67 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sub nsw i32 %69, 1
  %71 = load i32, i32* %12, align 4
  %72 = sub nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %68, i64 %73
  store i8 %65, i8* %74, align 1
  br label %75

75:                                               ; preds = %60
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  br label %56

78:                                               ; preds = %56
  br label %79

79:                                               ; preds = %78, %52, %43
  %80 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %81 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @serio_continue_rx(i32 %82)
  %84 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %85 = load i32, i32* %7, align 4
  %86 = and i32 %85, 255
  %87 = trunc i32 %86 to i8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @PS2_CMD_RESET_BAT, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 1000, i32 200
  %93 = call i64 @ps2_sendbyte(%struct.ps2dev* %84, i8 zeroext %87, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %79
  br label %207

96:                                               ; preds = %79
  store i32 0, i32* %12, align 4
  br label %97

97:                                               ; preds = %112, %96
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %115

101:                                              ; preds = %97
  %102 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = call i64 @ps2_sendbyte(%struct.ps2dev* %102, i8 zeroext %107, i32 200)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  br label %207

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %97

115:                                              ; preds = %97
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @PS2_CMD_RESET_BAT, align 4
  %118 = icmp eq i32 %116, %117
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 4000, i32 500
  %121 = call i32 @msecs_to_jiffies(i32 %120)
  store i32 %121, i32* %8, align 4
  %122 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %123 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %126 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @PS2_FLAG_CMD1, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @wait_event_timeout(i32 %124, i32 %132, i32 %133)
  store i32 %134, i32* %8, align 4
  %135 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %136 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %164

139:                                              ; preds = %115
  %140 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %141 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @PS2_FLAG_CMD1, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %164, label %146

146:                                              ; preds = %139
  %147 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @ps2_adjust_timeout(%struct.ps2dev* %147, i32 %148, i32 %149)
  store i32 %150, i32* %8, align 4
  %151 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %152 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %155 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @PS2_FLAG_CMD, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  %160 = xor i1 %159, true
  %161 = zext i1 %160 to i32
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @wait_event_timeout(i32 %153, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %146, %139, %115
  %165 = load i8*, i8** %6, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %191

167:                                              ; preds = %164
  store i32 0, i32* %12, align 4
  br label %168

168:                                              ; preds = %187, %167
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* %10, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %190

172:                                              ; preds = %168
  %173 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %174 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %173, i32 0, i32 2
  %175 = load i8*, i8** %174, align 8
  %176 = load i32, i32* %10, align 4
  %177 = sub nsw i32 %176, 1
  %178 = load i32, i32* %12, align 4
  %179 = sub nsw i32 %177, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %175, i64 %180
  %182 = load i8, i8* %181, align 1
  %183 = load i8*, i8** %6, align 8
  %184 = load i32, i32* %12, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  store i8 %182, i8* %186, align 1
  br label %187

187:                                              ; preds = %172
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %12, align 4
  br label %168

190:                                              ; preds = %168
  br label %191

191:                                              ; preds = %190, %164
  %192 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %193 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %206

196:                                              ; preds = %191
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* @PS2_CMD_RESET_BAT, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %205, label %200

200:                                              ; preds = %196
  %201 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %202 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %203, 1
  br i1 %204, label %205, label %206

205:                                              ; preds = %200, %196
  br label %207

206:                                              ; preds = %200, %191
  store i32 0, i32* %11, align 4
  br label %207

207:                                              ; preds = %206, %205, %110, %95
  %208 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %209 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @serio_pause_rx(i32 %210)
  %212 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %213 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %212, i32 0, i32 0
  store i32 0, i32* %213, align 8
  %214 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %215 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @serio_continue_rx(i32 %216)
  %218 = load i32, i32* %11, align 4
  store i32 %218, i32* %4, align 4
  br label %219

219:                                              ; preds = %207, %30, %22
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @serio_pause_rx(i32) #1

declare dso_local i32 @serio_continue_rx(i32) #1

declare dso_local i64 @ps2_sendbyte(%struct.ps2dev*, i8 zeroext, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @ps2_adjust_timeout(%struct.ps2dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
