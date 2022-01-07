; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_free_buffer_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_free_buffer_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { i32 }
%struct.bio = type { i32 }
%struct.bio_vec = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypt_config*, %struct.bio*)* @crypt_free_buffer_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypt_free_buffer_pages(%struct.crypt_config* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.crypt_config*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bio_vec*, align 8
  store %struct.crypt_config* %0, %struct.crypt_config** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %33, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.bio*, %struct.bio** %4, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %7
  %14 = load %struct.bio*, %struct.bio** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.bio_vec* @bio_iovec_idx(%struct.bio* %14, i32 %15)
  store %struct.bio_vec* %16, %struct.bio_vec** %6, align 8
  %17 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %18 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %25 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %28 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mempool_free(i32* %26, i32 %29)
  %31 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %32 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %13
  %34 = load i32, i32* %5, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %7

36:                                               ; preds = %7
  ret void
}

declare dso_local %struct.bio_vec* @bio_iovec_idx(%struct.bio*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mempool_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
