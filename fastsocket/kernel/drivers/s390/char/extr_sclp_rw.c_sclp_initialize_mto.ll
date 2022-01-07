; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_rw.c_sclp_initialize_mto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_rw.c_sclp_initialize_mto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sclp_buffer = type { i8*, i64, %struct.write_sccb* }
%struct.write_sccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mto = type { i32, i32, i32 }

@MAX_SCCB_ROOM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LNTPFLGS_ENDTEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sclp_buffer*, i32)* @sclp_initialize_mto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sclp_initialize_mto(%struct.sclp_buffer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sclp_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.write_sccb*, align 8
  %7 = alloca %struct.mto*, align 8
  %8 = alloca i32, align 4
  store %struct.sclp_buffer* %0, %struct.sclp_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = add i64 12, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %8, align 4
  %13 = load %struct.sclp_buffer*, %struct.sclp_buffer** %4, align 8
  %14 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %13, i32 0, i32 2
  %15 = load %struct.write_sccb*, %struct.write_sccb** %14, align 8
  store %struct.write_sccb* %15, %struct.write_sccb** %6, align 8
  %16 = load i32, i32* @MAX_SCCB_ROOM, align 4
  %17 = load %struct.write_sccb*, %struct.write_sccb** %6, align 8
  %18 = getelementptr inbounds %struct.write_sccb, %struct.write_sccb* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %16, %20
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %53

27:                                               ; preds = %2
  %28 = load %struct.write_sccb*, %struct.write_sccb** %6, align 8
  %29 = ptrtoint %struct.write_sccb* %28 to i32
  %30 = load %struct.write_sccb*, %struct.write_sccb** %6, align 8
  %31 = getelementptr inbounds %struct.write_sccb, %struct.write_sccb* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %29, %33
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to %struct.mto*
  store %struct.mto* %36, %struct.mto** %7, align 8
  %37 = load %struct.mto*, %struct.mto** %7, align 8
  %38 = call i32 @memset(%struct.mto* %37, i32 0, i32 12)
  %39 = load %struct.mto*, %struct.mto** %7, align 8
  %40 = getelementptr inbounds %struct.mto, %struct.mto* %39, i32 0, i32 0
  store i32 12, i32* %40, align 4
  %41 = load %struct.mto*, %struct.mto** %7, align 8
  %42 = getelementptr inbounds %struct.mto, %struct.mto* %41, i32 0, i32 1
  store i32 4, i32* %42, align 4
  %43 = load i32, i32* @LNTPFLGS_ENDTEXT, align 4
  %44 = load %struct.mto*, %struct.mto** %7, align 8
  %45 = getelementptr inbounds %struct.mto, %struct.mto* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.mto*, %struct.mto** %7, align 8
  %47 = getelementptr inbounds %struct.mto, %struct.mto* %46, i64 1
  %48 = bitcast %struct.mto* %47 to i8*
  %49 = load %struct.sclp_buffer*, %struct.sclp_buffer** %4, align 8
  %50 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.sclp_buffer*, %struct.sclp_buffer** %4, align 8
  %52 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %27, %24
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @memset(%struct.mto*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
