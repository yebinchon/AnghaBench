; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_34xx.c_tape_34xx_append_new_sbid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_34xx.c_tape_34xx_append_new_sbid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.tape_34xx_block_id = type { i32 }
%struct.tape_34xx_sbid = type { i32, %struct.tape_34xx_block_id }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.list_head*)* @tape_34xx_append_new_sbid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tape_34xx_append_new_sbid(i32 %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.tape_34xx_block_id, align 4
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.tape_34xx_sbid*, align 8
  %6 = getelementptr inbounds %struct.tape_34xx_block_id, %struct.tape_34xx_block_id* %3, i32 0, i32 0
  store i32 %0, i32* %6, align 4
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.tape_34xx_sbid* @kmalloc(i32 8, i32 %7)
  store %struct.tape_34xx_sbid* %8, %struct.tape_34xx_sbid** %5, align 8
  %9 = load %struct.tape_34xx_sbid*, %struct.tape_34xx_sbid** %5, align 8
  %10 = icmp ne %struct.tape_34xx_sbid* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %21

12:                                               ; preds = %2
  %13 = load %struct.tape_34xx_sbid*, %struct.tape_34xx_sbid** %5, align 8
  %14 = getelementptr inbounds %struct.tape_34xx_sbid, %struct.tape_34xx_sbid* %13, i32 0, i32 1
  %15 = bitcast %struct.tape_34xx_block_id* %14 to i8*
  %16 = bitcast %struct.tape_34xx_block_id* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 4, i1 false)
  %17 = load %struct.tape_34xx_sbid*, %struct.tape_34xx_sbid** %5, align 8
  %18 = getelementptr inbounds %struct.tape_34xx_sbid, %struct.tape_34xx_sbid* %17, i32 0, i32 0
  %19 = load %struct.list_head*, %struct.list_head** %4, align 8
  %20 = call i32 @list_add(i32* %18, %struct.list_head* %19)
  br label %21

21:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.tape_34xx_sbid* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
