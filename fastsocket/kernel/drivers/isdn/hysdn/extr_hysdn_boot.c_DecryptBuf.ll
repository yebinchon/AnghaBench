; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hysdn/extr_hysdn_boot.c_DecryptBuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hysdn/extr_hysdn_boot.c_DecryptBuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.boot_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@CRYPT_FEEDTERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.boot_data*, i32)* @DecryptBuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DecryptBuf(%struct.boot_data* %0, i32 %1) #0 {
  %3 = alloca %struct.boot_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.boot_data* %0, %struct.boot_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.boot_data*, %struct.boot_data** %3, align 8
  %7 = getelementptr inbounds %struct.boot_data, %struct.boot_data* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %5, align 8
  br label %10

10:                                               ; preds = %27, %2
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %4, align 4
  %13 = icmp ne i32 %11, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %10
  %15 = load %struct.boot_data*, %struct.boot_data** %3, align 8
  %16 = getelementptr inbounds %struct.boot_data, %struct.boot_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = ashr i32 %17, 1
  %19 = load %struct.boot_data*, %struct.boot_data** %3, align 8
  %20 = getelementptr inbounds %struct.boot_data, %struct.boot_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* @CRYPT_FEEDTERM, align 4
  br label %27

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i32 [ %25, %24 ], [ 0, %26 ]
  %29 = xor i32 %18, %28
  %30 = load %struct.boot_data*, %struct.boot_data** %3, align 8
  %31 = getelementptr inbounds %struct.boot_data, %struct.boot_data* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.boot_data*, %struct.boot_data** %3, align 8
  %33 = getelementptr inbounds %struct.boot_data, %struct.boot_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = trunc i32 %34 to i8
  %36 = zext i8 %35 to i32
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %5, align 8
  %39 = load i8, i8* %37, align 1
  %40 = zext i8 %39 to i32
  %41 = xor i32 %40, %36
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %37, align 1
  br label %10

43:                                               ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
