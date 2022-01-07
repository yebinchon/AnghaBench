; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_mousedev.c_mousedev_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_mousedev.c_mousedev_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mousedev_client = type { i64, i32, i32, i64, i32, i64, %struct.mousedev_motion* }
%struct.mousedev_motion = type { i64, i64, i32, i64 }

@PACKET_QUEUE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mousedev_client*, i8*)* @mousedev_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mousedev_packet(%struct.mousedev_client* %0, i8* %1) #0 {
  %3 = alloca %struct.mousedev_client*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mousedev_motion*, align 8
  store %struct.mousedev_client* %0, %struct.mousedev_client** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %7 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %6, i32 0, i32 6
  %8 = load %struct.mousedev_motion*, %struct.mousedev_motion** %7, align 8
  %9 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %10 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %8, i64 %11
  store %struct.mousedev_motion* %12, %struct.mousedev_motion** %5, align 8
  %13 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %14 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = shl i32 %17, 4
  %19 = or i32 8, %18
  %20 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %21 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = shl i32 %24, 5
  %26 = or i32 %19, %25
  %27 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %28 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, 7
  %31 = or i32 %26, %30
  %32 = trunc i32 %31 to i8
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  store i8 %32, i8* %34, align 1
  %35 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %36 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call signext i8 @mousedev_limit_delta(i64 %37, i32 127)
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  store i8 %38, i8* %40, align 1
  %41 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %42 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call signext i8 @mousedev_limit_delta(i64 %43, i32 127)
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  store i8 %44, i8* %46, align 1
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i64
  %51 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %52 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %53, %50
  store i64 %54, i64* %52, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i64
  %59 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %60 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %61, %58
  store i64 %62, i64* %60, align 8
  %63 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %64 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %132 [
    i32 130, label %66
    i32 129, label %97
    i32 128, label %131
  ]

66:                                               ; preds = %2
  %67 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %68 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = call signext i8 @mousedev_limit_delta(i64 %69, i32 7)
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 3
  store i8 %70, i8* %72, align 1
  %73 = load i8*, i8** %4, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 3
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i64
  %77 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %78 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %79, %76
  store i64 %80, i64* %78, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 3
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = and i32 %84, 15
  %86 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %87 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, 24
  %90 = shl i32 %89, 1
  %91 = or i32 %85, %90
  %92 = trunc i32 %91 to i8
  %93 = load i8*, i8** %4, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 3
  store i8 %92, i8* %94, align 1
  %95 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %96 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %95, i32 0, i32 2
  store i32 4, i32* %96, align 4
  br label %154

97:                                               ; preds = %2
  %98 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %99 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, 16
  %102 = ashr i32 %101, 3
  %103 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %104 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, 8
  %107 = ashr i32 %106, 1
  %108 = or i32 %102, %107
  %109 = load i8*, i8** %4, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 0
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = or i32 %112, %108
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %110, align 1
  %115 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %116 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = call signext i8 @mousedev_limit_delta(i64 %117, i32 127)
  %119 = load i8*, i8** %4, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 3
  store i8 %118, i8* %120, align 1
  %121 = load i8*, i8** %4, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 3
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i64
  %125 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %126 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 %127, %124
  store i64 %128, i64* %126, align 8
  %129 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %130 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %129, i32 0, i32 2
  store i32 4, i32* %130, align 4
  br label %154

131:                                              ; preds = %2
  br label %132

132:                                              ; preds = %2, %131
  %133 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %134 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = and i32 %135, 16
  %137 = ashr i32 %136, 3
  %138 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %139 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = and i32 %140, 8
  %142 = ashr i32 %141, 1
  %143 = or i32 %137, %142
  %144 = load i8*, i8** %4, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 0
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = or i32 %147, %143
  %149 = trunc i32 %148 to i8
  store i8 %149, i8* %145, align 1
  %150 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %151 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %150, i32 0, i32 3
  store i64 0, i64* %151, align 8
  %152 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %153 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %152, i32 0, i32 2
  store i32 3, i32* %153, align 4
  br label %154

154:                                              ; preds = %132, %97, %66
  %155 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %156 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %196, label %159

159:                                              ; preds = %154
  %160 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %161 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %196, label %164

164:                                              ; preds = %159
  %165 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %166 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %196, label %169

169:                                              ; preds = %164
  %170 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %171 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %174 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %172, %175
  br i1 %176, label %177, label %185

177:                                              ; preds = %169
  %178 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %179 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %178, i32 0, i32 5
  store i64 0, i64* %179, align 8
  %180 = load %struct.mousedev_motion*, %struct.mousedev_motion** %5, align 8
  %181 = getelementptr inbounds %struct.mousedev_motion, %struct.mousedev_motion* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %184 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %183, i32 0, i32 4
  store i32 %182, i32* %184, align 8
  br label %195

185:                                              ; preds = %169
  %186 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %187 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = add i64 %188, 1
  %190 = load i32, i32* @PACKET_QUEUE_LEN, align 4
  %191 = sext i32 %190 to i64
  %192 = urem i64 %189, %191
  %193 = load %struct.mousedev_client*, %struct.mousedev_client** %3, align 8
  %194 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %193, i32 0, i32 0
  store i64 %192, i64* %194, align 8
  br label %195

195:                                              ; preds = %185, %177
  br label %196

196:                                              ; preds = %195, %164, %159, %154
  ret void
}

declare dso_local signext i8 @mousedev_limit_delta(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
