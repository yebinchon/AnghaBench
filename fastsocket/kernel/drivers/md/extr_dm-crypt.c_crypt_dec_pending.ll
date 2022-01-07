; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_dec_pending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_dec_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_crypt_io = type { i32, i32, %struct.dm_crypt_io*, %struct.bio*, %struct.TYPE_2__* }
%struct.bio = type { i32 }
%struct.TYPE_2__ = type { %struct.crypt_config* }
%struct.crypt_config = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_crypt_io*)* @crypt_dec_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypt_dec_pending(%struct.dm_crypt_io* %0) #0 {
  %2 = alloca %struct.dm_crypt_io*, align 8
  %3 = alloca %struct.crypt_config*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.dm_crypt_io*, align 8
  %6 = alloca i32, align 4
  store %struct.dm_crypt_io* %0, %struct.dm_crypt_io** %2, align 8
  %7 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %8 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %7, i32 0, i32 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.crypt_config*, %struct.crypt_config** %10, align 8
  store %struct.crypt_config* %11, %struct.crypt_config** %3, align 8
  %12 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %13 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %12, i32 0, i32 3
  %14 = load %struct.bio*, %struct.bio** %13, align 8
  store %struct.bio* %14, %struct.bio** %4, align 8
  %15 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %16 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %15, i32 0, i32 2
  %17 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %16, align 8
  store %struct.dm_crypt_io* %17, %struct.dm_crypt_io** %5, align 8
  %18 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %19 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  %21 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %22 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %21, i32 0, i32 1
  %23 = call i32 @atomic_dec_and_test(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %56

26:                                               ; preds = %1
  %27 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %28 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %29 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mempool_free(%struct.dm_crypt_io* %27, i32 %30)
  %32 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %5, align 8
  %33 = icmp ne %struct.dm_crypt_io* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @likely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %26
  %39 = load %struct.bio*, %struct.bio** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @bio_endio(%struct.bio* %39, i32 %40)
  br label %56

42:                                               ; preds = %26
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %5, align 8
  %47 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %5, align 8
  %53 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %45, %42
  %55 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %5, align 8
  call void @crypt_dec_pending(%struct.dm_crypt_io* %55)
  br label %56

56:                                               ; preds = %25, %54, %38
  ret void
}

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @mempool_free(%struct.dm_crypt_io*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @bio_endio(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
