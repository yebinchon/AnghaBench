; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_isocdata.c_isowbuf_putflag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_isocdata.c_isowbuf_putflag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isowbuf_t = type { i32, i32, i32*, i32 }

@DEBUG_ISO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"idle fill byte %02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isowbuf_t*)* @isowbuf_putflag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isowbuf_putflag(%struct.isowbuf_t* %0) #0 {
  %2 = alloca %struct.isowbuf_t*, align 8
  %3 = alloca i32, align 4
  store %struct.isowbuf_t* %0, %struct.isowbuf_t** %2, align 8
  %4 = load %struct.isowbuf_t*, %struct.isowbuf_t** %2, align 8
  %5 = call i32 @isowbuf_putbits(%struct.isowbuf_t* %4, i32 32382, i32 8)
  %6 = load %struct.isowbuf_t*, %struct.isowbuf_t** %2, align 8
  %7 = getelementptr inbounds %struct.isowbuf_t, %struct.isowbuf_t* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.isowbuf_t*, %struct.isowbuf_t** %2, align 8
  %10 = getelementptr inbounds %struct.isowbuf_t, %struct.isowbuf_t* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.isowbuf_t*, %struct.isowbuf_t** %2, align 8
  %17 = getelementptr inbounds %struct.isowbuf_t, %struct.isowbuf_t* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @DEBUG_ISO, align 4
  %19 = load %struct.isowbuf_t*, %struct.isowbuf_t** %2, align 8
  %20 = getelementptr inbounds %struct.isowbuf_t, %struct.isowbuf_t* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @gig_dbg(i32 %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.isowbuf_t*, %struct.isowbuf_t** %2, align 8
  %24 = getelementptr inbounds %struct.isowbuf_t, %struct.isowbuf_t* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 1, %25
  %27 = sub nsw i32 %26, 1
  %28 = load %struct.isowbuf_t*, %struct.isowbuf_t** %2, align 8
  %29 = getelementptr inbounds %struct.isowbuf_t, %struct.isowbuf_t* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %27
  store i32 %35, i32* %33, align 4
  ret void
}

declare dso_local i32 @isowbuf_putbits(%struct.isowbuf_t*, i32, i32) #1

declare dso_local i32 @gig_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
