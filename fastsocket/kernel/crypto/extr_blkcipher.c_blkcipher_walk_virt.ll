; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_blkcipher.c_blkcipher_walk_virt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_blkcipher.c_blkcipher_walk_virt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.blkcipher_walk = type { i32, i32 }

@BLKCIPHER_WALK_PHYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blkcipher_walk_virt(%struct.blkcipher_desc* %0, %struct.blkcipher_walk* %1) #0 {
  %3 = alloca %struct.blkcipher_desc*, align 8
  %4 = alloca %struct.blkcipher_walk*, align 8
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %3, align 8
  store %struct.blkcipher_walk* %1, %struct.blkcipher_walk** %4, align 8
  %5 = load i32, i32* @BLKCIPHER_WALK_PHYS, align 4
  %6 = xor i32 %5, -1
  %7 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %4, align 8
  %8 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %3, align 8
  %12 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @crypto_blkcipher_blocksize(i32 %13)
  %15 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %4, align 8
  %16 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %3, align 8
  %18 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %4, align 8
  %19 = call i32 @blkcipher_walk_first(%struct.blkcipher_desc* %17, %struct.blkcipher_walk* %18)
  ret i32 %19
}

declare dso_local i32 @crypto_blkcipher_blocksize(i32) #1

declare dso_local i32 @blkcipher_walk_first(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
