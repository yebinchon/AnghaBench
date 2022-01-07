; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_kcryptd_crypt_read_convert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_kcryptd_crypt_read_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_crypt_io = type { %struct.TYPE_5__, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.crypt_config* }
%struct.crypt_config = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_crypt_io*)* @kcryptd_crypt_read_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kcryptd_crypt_read_convert(%struct.dm_crypt_io* %0) #0 {
  %2 = alloca %struct.dm_crypt_io*, align 8
  %3 = alloca %struct.crypt_config*, align 8
  %4 = alloca i32, align 4
  store %struct.dm_crypt_io* %0, %struct.dm_crypt_io** %2, align 8
  %5 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %6 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %5, i32 0, i32 3
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  store %struct.crypt_config* %9, %struct.crypt_config** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %11 = call i32 @crypt_inc_pending(%struct.dm_crypt_io* %10)
  %12 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %13 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %14 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %13, i32 0, i32 0
  %15 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %16 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %19 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %22 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @crypt_convert_init(%struct.crypt_config* %12, %struct.TYPE_5__* %14, i32 %17, i32 %20, i32 %23)
  %25 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %26 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %27 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %26, i32 0, i32 0
  %28 = call i32 @crypt_convert(%struct.crypt_config* %25, %struct.TYPE_5__* %27)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %30 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = call i64 @atomic_dec_and_test(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @kcryptd_crypt_read_done(%struct.dm_crypt_io* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %1
  %39 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %40 = call i32 @crypt_dec_pending(%struct.dm_crypt_io* %39)
  ret void
}

declare dso_local i32 @crypt_inc_pending(%struct.dm_crypt_io*) #1

declare dso_local i32 @crypt_convert_init(%struct.crypt_config*, %struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @crypt_convert(%struct.crypt_config*, %struct.TYPE_5__*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @kcryptd_crypt_read_done(%struct.dm_crypt_io*, i32) #1

declare dso_local i32 @crypt_dec_pending(%struct.dm_crypt_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
