; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_c6xdigio.c_C6X_pwmOutput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_c6xdigio.c_C6X_pwmOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pwmcmdtype = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@C6XDIGIO_TIME_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32)* @C6X_pwmOutput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @C6X_pwmOutput(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.pwmcmdtype, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = bitcast %union.pwmcmdtype* %8 to i32*
  store i32 %11, i32* %12, align 4
  %13 = bitcast %union.pwmcmdtype* %8 to i32*
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %14, 498
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = bitcast %union.pwmcmdtype* %8 to i32*
  store i32 498, i32* %17, align 4
  br label %18

18:                                               ; preds = %16, %3
  %19 = bitcast %union.pwmcmdtype* %8 to i32*
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = bitcast %union.pwmcmdtype* %8 to i32*
  store i32 2, i32* %23, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 40, i32* %7, align 4
  br label %29

28:                                               ; preds = %24
  store i32 48, i32* %7, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = load i64, i64* %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = bitcast %union.pwmcmdtype* %8 to %struct.TYPE_2__*
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add i32 %31, %34
  %36 = call i32 @WriteByteToHwPort(i64 %30, i32 %35)
  %37 = load i64, i64* %4, align 8
  %38 = add i64 %37, 1
  %39 = call i32 @ReadByteFromHwPort(i64 %38)
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %50, %29
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, 128
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @C6XDIGIO_TIME_OUT, align 4
  %47 = icmp slt i32 %45, %46
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i1 [ false, %40 ], [ %47, %44 ]
  br i1 %49, label %50, label %56

50:                                               ; preds = %48
  %51 = load i64, i64* %4, align 8
  %52 = add i64 %51, 1
  %53 = call i32 @ReadByteFromHwPort(i64 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %40

56:                                               ; preds = %48
  %57 = load i64, i64* %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = bitcast %union.pwmcmdtype* %8 to %struct.TYPE_2__*
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add i32 %58, %61
  %63 = add i32 %62, 4
  %64 = call i32 @WriteByteToHwPort(i64 %57, i32 %63)
  store i32 0, i32* %9, align 4
  %65 = load i64, i64* %4, align 8
  %66 = add i64 %65, 1
  %67 = call i32 @ReadByteFromHwPort(i64 %66)
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %78, %56
  %69 = load i32, i32* %10, align 4
  %70 = and i32 %69, 128
  %71 = icmp eq i32 %70, 128
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @C6XDIGIO_TIME_OUT, align 4
  %75 = icmp slt i32 %73, %74
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i1 [ false, %68 ], [ %75, %72 ]
  br i1 %77, label %78, label %84

78:                                               ; preds = %76
  %79 = load i64, i64* %4, align 8
  %80 = add i64 %79, 1
  %81 = call i32 @ReadByteFromHwPort(i64 %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %68

84:                                               ; preds = %76
  %85 = load i64, i64* %4, align 8
  %86 = load i32, i32* %7, align 4
  %87 = bitcast %union.pwmcmdtype* %8 to %struct.TYPE_2__*
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = add i32 %86, %89
  %91 = call i32 @WriteByteToHwPort(i64 %85, i32 %90)
  %92 = load i64, i64* %4, align 8
  %93 = add i64 %92, 1
  %94 = call i32 @ReadByteFromHwPort(i64 %93)
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %105, %84
  %96 = load i32, i32* %10, align 4
  %97 = and i32 %96, 128
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @C6XDIGIO_TIME_OUT, align 4
  %102 = icmp slt i32 %100, %101
  br label %103

103:                                              ; preds = %99, %95
  %104 = phi i1 [ false, %95 ], [ %102, %99 ]
  br i1 %104, label %105, label %111

105:                                              ; preds = %103
  %106 = load i64, i64* %4, align 8
  %107 = add i64 %106, 1
  %108 = call i32 @ReadByteFromHwPort(i64 %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %95

111:                                              ; preds = %103
  %112 = load i64, i64* %4, align 8
  %113 = load i32, i32* %7, align 4
  %114 = bitcast %union.pwmcmdtype* %8 to %struct.TYPE_2__*
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = add i32 %113, %116
  %118 = add i32 %117, 4
  %119 = call i32 @WriteByteToHwPort(i64 %112, i32 %118)
  store i32 0, i32* %9, align 4
  %120 = load i64, i64* %4, align 8
  %121 = add i64 %120, 1
  %122 = call i32 @ReadByteFromHwPort(i64 %121)
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %133, %111
  %124 = load i32, i32* %10, align 4
  %125 = and i32 %124, 128
  %126 = icmp eq i32 %125, 128
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @C6XDIGIO_TIME_OUT, align 4
  %130 = icmp slt i32 %128, %129
  br label %131

131:                                              ; preds = %127, %123
  %132 = phi i1 [ false, %123 ], [ %130, %127 ]
  br i1 %132, label %133, label %139

133:                                              ; preds = %131
  %134 = load i64, i64* %4, align 8
  %135 = add i64 %134, 1
  %136 = call i32 @ReadByteFromHwPort(i64 %135)
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %123

139:                                              ; preds = %131
  %140 = load i64, i64* %4, align 8
  %141 = load i32, i32* %7, align 4
  %142 = bitcast %union.pwmcmdtype* %8 to %struct.TYPE_2__*
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = add i32 %141, %144
  %146 = call i32 @WriteByteToHwPort(i64 %140, i32 %145)
  %147 = load i64, i64* %4, align 8
  %148 = add i64 %147, 1
  %149 = call i32 @ReadByteFromHwPort(i64 %148)
  store i32 %149, i32* %10, align 4
  br label %150

150:                                              ; preds = %160, %139
  %151 = load i32, i32* %10, align 4
  %152 = and i32 %151, 128
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* @C6XDIGIO_TIME_OUT, align 4
  %157 = icmp slt i32 %155, %156
  br label %158

158:                                              ; preds = %154, %150
  %159 = phi i1 [ false, %150 ], [ %157, %154 ]
  br i1 %159, label %160, label %166

160:                                              ; preds = %158
  %161 = load i64, i64* %4, align 8
  %162 = add i64 %161, 1
  %163 = call i32 @ReadByteFromHwPort(i64 %162)
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %9, align 4
  br label %150

166:                                              ; preds = %158
  %167 = load i64, i64* %4, align 8
  %168 = call i32 @WriteByteToHwPort(i64 %167, i32 0)
  store i32 0, i32* %9, align 4
  %169 = load i64, i64* %4, align 8
  %170 = add i64 %169, 1
  %171 = call i32 @ReadByteFromHwPort(i64 %170)
  store i32 %171, i32* %10, align 4
  br label %172

172:                                              ; preds = %182, %166
  %173 = load i32, i32* %10, align 4
  %174 = and i32 %173, 128
  %175 = icmp eq i32 %174, 128
  br i1 %175, label %176, label %180

176:                                              ; preds = %172
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* @C6XDIGIO_TIME_OUT, align 4
  %179 = icmp slt i32 %177, %178
  br label %180

180:                                              ; preds = %176, %172
  %181 = phi i1 [ false, %172 ], [ %179, %176 ]
  br i1 %181, label %182, label %188

182:                                              ; preds = %180
  %183 = load i64, i64* %4, align 8
  %184 = add i64 %183, 1
  %185 = call i32 @ReadByteFromHwPort(i64 %184)
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %9, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %9, align 4
  br label %172

188:                                              ; preds = %180
  ret void
}

declare dso_local i32 @WriteByteToHwPort(i64, i32) #1

declare dso_local i32 @ReadByteFromHwPort(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
