; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_aachba.c_set_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_aachba.c_set_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sense_data = type { i32 }

@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SENCODE_INVALID_CDB_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sense_data*, i32, i32, i32, i32, i32)* @set_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_sense(%struct.sense_data* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sense_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.sense_data* %0, %struct.sense_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.sense_data*, %struct.sense_data** %7, align 8
  %15 = bitcast %struct.sense_data* %14 to i32*
  store i32* %15, i32** %13, align 8
  %16 = load i32*, i32** %13, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 112, i32* %17, align 4
  %18 = load i32*, i32** %13, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32*, i32** %13, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32*, i32** %13, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 12
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32*, i32** %13, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 13
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %6
  %33 = load i32*, i32** %13, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 7
  store i32 10, i32* %34, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32*, i32** %13, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 15
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @SENCODE_INVALID_CDB_FIELD, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %32
  %42 = load i32*, i32** %13, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 15
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, 192
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %41, %32
  %47 = load i32, i32* %12, align 4
  %48 = ashr i32 %47, 8
  %49 = load i32*, i32** %13, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 16
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32*, i32** %13, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 17
  store i32 %51, i32* %53, align 4
  br label %57

54:                                               ; preds = %6
  %55 = load i32*, i32** %13, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 7
  store i32 6, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %46
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
