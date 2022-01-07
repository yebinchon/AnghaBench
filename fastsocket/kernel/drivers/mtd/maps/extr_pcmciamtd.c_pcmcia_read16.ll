; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_pcmciamtd.c_pcmcia_read16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_pcmciamtd.c_pcmcia_read16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i32 }
%struct.TYPE_5__ = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"ofs = 0x%08lx (%p) data = 0x%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i32*, i32 } (%struct.map_info*, i64)* @pcmcia_read16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i32*, i32 } @pcmcia_read16(%struct.map_info* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca %struct.map_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.map_info* %0, %struct.map_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.map_info*, %struct.map_info** %4, align 8
  %8 = getelementptr inbounds %struct.map_info, %struct.map_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %6, align 8
  %11 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = load %struct.map_info*, %struct.map_info** %4, align 8
  %13 = call i64 @DEV_REMOVED(%struct.map_info* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %33

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = add i64 %17, %18
  %20 = call i32 @readw(i64 %19)
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %20, i32* %23, align 4
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %25, %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @DEBUG(i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %24, i64 %27, i32 %31)
  br label %33

33:                                               ; preds = %16, %15
  %34 = bitcast %struct.TYPE_5__* %3 to { i32*, i32 }*
  %35 = load { i32*, i32 }, { i32*, i32 }* %34, align 8
  ret { i32*, i32 } %35
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @DEV_REMOVED(%struct.map_info*) #2

declare dso_local i32 @readw(i64) #2

declare dso_local i32 @DEBUG(i32, i8*, i64, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
