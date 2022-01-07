; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_ppc6lnx.c_ppc6_wr_data_blk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_ppc6lnx.c_ppc6_wr_data_blk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@data_stb = common dso_local global i32 0, align 4
@CMD_PREFIX_SET = common dso_local global i32 0, align 4
@PREFIX_FASTWR = common dso_local global i32 0, align 4
@port_stb = common dso_local global i32 0, align 4
@CMD_PREFIX_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i64)* @ppc6_wr_data_blk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc6_wr_data_blk(%struct.TYPE_5__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %205 [
    i32 128, label %12
    i32 133, label %12
    i32 129, label %39
    i32 134, label %39
    i32 132, label %119
    i32 130, label %137
    i32 131, label %171
  ]

12:                                               ; preds = %3, %3
  br label %13

13:                                               ; preds = %17, %12
  %14 = load i64, i64* %6, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %6, align 8
  %16 = icmp ne i64 %14, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %13
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %5, align 8
  %20 = load i32, i32* %18, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @outb(i32 %20, i32 %23)
  %25 = load i32, i32* @data_stb, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = xor i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 2
  %37 = call i32 @outb(i32 %32, i32 %36)
  br label %13

38:                                               ; preds = %13
  br label %205

39:                                               ; preds = %3, %3
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = load i32, i32* @CMD_PREFIX_SET, align 4
  %42 = load i32, i32* @PREFIX_FASTWR, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @ppc6_send_cmd(%struct.TYPE_5__* %40, i32 %43)
  %45 = load i32, i32* @port_stb, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 2
  %57 = call i32 @outb(i32 %52, i32 %56)
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @outb(i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %98, %39
  %66 = load i64, i64* %6, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %99

68:                                               ; preds = %65
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %5, align 8
  %71 = load i32, i32* %69, align 4
  store i32 %71, i32* %7, align 4
  %72 = load i64, i64* %6, align 8
  %73 = add nsw i64 %72, -1
  store i64 %73, i64* %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %68
  %78 = load i32, i32* @data_stb, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = xor i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 2
  %90 = call i32 @outb(i32 %85, i32 %89)
  br label %98

91:                                               ; preds = %68
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @outb(i32 %92, i32 %95)
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %91, %77
  br label %65

99:                                               ; preds = %65
  %100 = load i32, i32* @port_stb, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 2
  %113 = call i32 @outb(i32 %108, i32 %112)
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %115 = load i32, i32* @CMD_PREFIX_RESET, align 4
  %116 = load i32, i32* @PREFIX_FASTWR, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @ppc6_send_cmd(%struct.TYPE_5__* %114, i32 %117)
  br label %205

119:                                              ; preds = %3
  br label %120

120:                                              ; preds = %123, %119
  %121 = load i64, i64* %6, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %120
  %124 = load i32*, i32** %5, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %5, align 8
  %126 = load i32, i32* %124, align 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 4
  %131 = call i32 @outb(i32 %126, i32 %130)
  %132 = load i64, i64* %6, align 8
  %133 = add nsw i64 %132, -1
  store i64 %133, i64* %6, align 8
  br label %120

134:                                              ; preds = %120
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %136 = call i32 @ppc6_wait_for_fifo(%struct.TYPE_5__* %135)
  br label %205

137:                                              ; preds = %3
  br label %138

138:                                              ; preds = %141, %137
  %139 = load i64, i64* %6, align 8
  %140 = icmp sgt i64 %139, 1
  br i1 %140, label %141, label %153

141:                                              ; preds = %138
  %142 = load i32*, i32** %5, align 8
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 4
  %148 = call i32 @outw(i32 %143, i32 %147)
  %149 = load i32*, i32** %5, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 2
  store i32* %150, i32** %5, align 8
  %151 = load i64, i64* %6, align 8
  %152 = sub nsw i64 %151, 2
  store i64 %152, i64* %6, align 8
  br label %138

153:                                              ; preds = %138
  br label %154

154:                                              ; preds = %157, %153
  %155 = load i64, i64* %6, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %154
  %158 = load i32*, i32** %5, align 8
  %159 = getelementptr inbounds i32, i32* %158, i32 1
  store i32* %159, i32** %5, align 8
  %160 = load i32, i32* %158, align 4
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 4
  %165 = call i32 @outb(i32 %160, i32 %164)
  %166 = load i64, i64* %6, align 8
  %167 = add nsw i64 %166, -1
  store i64 %167, i64* %6, align 8
  br label %154

168:                                              ; preds = %154
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %170 = call i32 @ppc6_wait_for_fifo(%struct.TYPE_5__* %169)
  br label %205

171:                                              ; preds = %3
  br label %172

172:                                              ; preds = %175, %171
  %173 = load i64, i64* %6, align 8
  %174 = icmp sgt i64 %173, 3
  br i1 %174, label %175, label %187

175:                                              ; preds = %172
  %176 = load i32*, i32** %5, align 8
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, 4
  %182 = call i32 @outl(i32 %177, i32 %181)
  %183 = load i32*, i32** %5, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 4
  store i32* %184, i32** %5, align 8
  %185 = load i64, i64* %6, align 8
  %186 = sub nsw i64 %185, 4
  store i64 %186, i64* %6, align 8
  br label %172

187:                                              ; preds = %172
  br label %188

188:                                              ; preds = %191, %187
  %189 = load i64, i64* %6, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %202

191:                                              ; preds = %188
  %192 = load i32*, i32** %5, align 8
  %193 = getelementptr inbounds i32, i32* %192, i32 1
  store i32* %193, i32** %5, align 8
  %194 = load i32, i32* %192, align 4
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, 4
  %199 = call i32 @outb(i32 %194, i32 %198)
  %200 = load i64, i64* %6, align 8
  %201 = add nsw i64 %200, -1
  store i64 %201, i64* %6, align 8
  br label %188

202:                                              ; preds = %188
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %204 = call i32 @ppc6_wait_for_fifo(%struct.TYPE_5__* %203)
  br label %205

205:                                              ; preds = %3, %202, %168, %134, %99, %38
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @ppc6_send_cmd(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ppc6_wait_for_fifo(%struct.TYPE_5__*) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @outl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
