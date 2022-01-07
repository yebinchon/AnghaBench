; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_isocdata.c_gigaset_isowbuf_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_isocdata.c_gigaset_isowbuf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isowbuf_t = type { i8, i64, i64, i32, i64, i64, i64 }

@BAS_OUTBUFSIZE = common dso_local global i64 0, align 8
@BAS_OUTBUFPAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gigaset_isowbuf_init(%struct.isowbuf_t* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.isowbuf_t*, align 8
  %4 = alloca i8, align 1
  store %struct.isowbuf_t* %0, %struct.isowbuf_t** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.isowbuf_t*, %struct.isowbuf_t** %3, align 8
  %6 = getelementptr inbounds %struct.isowbuf_t, %struct.isowbuf_t* %5, i32 0, i32 6
  store i64 0, i64* %6, align 8
  %7 = load %struct.isowbuf_t*, %struct.isowbuf_t** %3, align 8
  %8 = getelementptr inbounds %struct.isowbuf_t, %struct.isowbuf_t* %7, i32 0, i32 5
  store i64 0, i64* %8, align 8
  %9 = load %struct.isowbuf_t*, %struct.isowbuf_t** %3, align 8
  %10 = getelementptr inbounds %struct.isowbuf_t, %struct.isowbuf_t* %9, i32 0, i32 4
  store i64 0, i64* %10, align 8
  %11 = load %struct.isowbuf_t*, %struct.isowbuf_t** %3, align 8
  %12 = getelementptr inbounds %struct.isowbuf_t, %struct.isowbuf_t* %11, i32 0, i32 3
  %13 = call i32 @atomic_set(i32* %12, i32 1)
  %14 = load %struct.isowbuf_t*, %struct.isowbuf_t** %3, align 8
  %15 = getelementptr inbounds %struct.isowbuf_t, %struct.isowbuf_t* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load i8, i8* %4, align 1
  %17 = load %struct.isowbuf_t*, %struct.isowbuf_t** %3, align 8
  %18 = getelementptr inbounds %struct.isowbuf_t, %struct.isowbuf_t* %17, i32 0, i32 0
  store i8 %16, i8* %18, align 8
  %19 = load %struct.isowbuf_t*, %struct.isowbuf_t** %3, align 8
  %20 = getelementptr inbounds %struct.isowbuf_t, %struct.isowbuf_t* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BAS_OUTBUFSIZE, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i8, i8* %4, align 1
  %25 = load i32, i32* @BAS_OUTBUFPAD, align 4
  %26 = call i32 @memset(i64 %23, i8 zeroext %24, i32 %25)
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @memset(i64, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
