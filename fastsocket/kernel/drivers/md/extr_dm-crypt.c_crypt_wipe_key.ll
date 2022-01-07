; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_wipe_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_wipe_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { i32, i32, i32, i32 }

@DM_CRYPT_KEY_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypt_config*)* @crypt_wipe_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_wipe_key(%struct.crypt_config* %0) #0 {
  %2 = alloca %struct.crypt_config*, align 8
  store %struct.crypt_config* %0, %struct.crypt_config** %2, align 8
  %3 = load i32, i32* @DM_CRYPT_KEY_VALID, align 4
  %4 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %5 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %4, i32 0, i32 3
  %6 = call i32 @clear_bit(i32 %3, i32* %5)
  %7 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %8 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %7, i32 0, i32 1
  %9 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %10 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = call i32 @memset(i32* %8, i32 0, i32 %14)
  %16 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %17 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %20 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %23 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @crypto_ablkcipher_setkey(i32 %18, i32 %21, i32 %24)
  ret i32 %25
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @crypto_ablkcipher_setkey(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
