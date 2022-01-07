; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoedev.c_aoe_failip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoedev.c_aoe_failip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoedev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bio*, %struct.request*, i32 }
%struct.bio = type { %struct.bio*, i32 }
%struct.request = type { i8* }

@BIO_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aoedev*)* @aoe_failip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aoe_failip(%struct.aoedev* %0) #0 {
  %2 = alloca %struct.aoedev*, align 8
  %3 = alloca %struct.request*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i64, align 8
  store %struct.aoedev* %0, %struct.aoedev** %2, align 8
  %6 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %7 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %8 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @aoe_failbuf(%struct.aoedev* %6, i32 %10)
  %12 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %13 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.request*, %struct.request** %14, align 8
  store %struct.request* %15, %struct.request** %3, align 8
  %16 = load %struct.request*, %struct.request** %3, align 8
  %17 = icmp eq %struct.request* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %56

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %26, %19
  %21 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %22 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.bio*, %struct.bio** %23, align 8
  store %struct.bio* %24, %struct.bio** %4, align 8
  %25 = icmp ne %struct.bio* %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %20
  %27 = load i32, i32* @BIO_UPTODATE, align 4
  %28 = load %struct.bio*, %struct.bio** %4, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 1
  %30 = call i32 @clear_bit(i32 %27, i32* %29)
  %31 = load %struct.bio*, %struct.bio** %4, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 0
  %33 = load %struct.bio*, %struct.bio** %32, align 8
  %34 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %35 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store %struct.bio* %33, %struct.bio** %36, align 8
  %37 = load %struct.request*, %struct.request** %3, align 8
  %38 = getelementptr inbounds %struct.request, %struct.request* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = ptrtoint i8* %39 to i64
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %5, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = load %struct.request*, %struct.request** %3, align 8
  %45 = getelementptr inbounds %struct.request, %struct.request* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  br label %20

46:                                               ; preds = %20
  %47 = load %struct.request*, %struct.request** %3, align 8
  %48 = getelementptr inbounds %struct.request, %struct.request* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %54 = load %struct.request*, %struct.request** %3, align 8
  %55 = call i32 @aoe_end_request(%struct.aoedev* %53, %struct.request* %54, i32 0)
  br label %56

56:                                               ; preds = %18, %52, %46
  ret void
}

declare dso_local i32 @aoe_failbuf(%struct.aoedev*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @aoe_end_request(%struct.aoedev*, %struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
