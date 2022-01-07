; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_reinit_fdir_tables_82599.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_reinit_fdir_tables_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_FDIRCTRL = common dso_local global i32 0, align 4
@IXGBE_FDIRCTRL_INIT_DONE = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_CMD_POLL = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_CMD_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"Flow Director previous command isn't complete, aborting table re-initialization.\0A\00", align 1
@IXGBE_ERR_FDIR_REINIT_FAILED = common dso_local global i32 0, align 4
@IXGBE_FDIRFREE = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_CLEARHT = common dso_local global i32 0, align 4
@IXGBE_FDIRHASH = common dso_local global i32 0, align 4
@IXGBE_FDIR_INIT_DONE_POLL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Flow Director Signature poll time exceeded!\0A\00", align 1
@IXGBE_FDIRUSTAT = common dso_local global i32 0, align 4
@IXGBE_FDIRFSTAT = common dso_local global i32 0, align 4
@IXGBE_FDIRMATCH = common dso_local global i32 0, align 4
@IXGBE_FDIRMISS = common dso_local global i32 0, align 4
@IXGBE_FDIRLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_reinit_fdir_tables_82599(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %7 = load i32, i32* @IXGBE_FDIRCTRL, align 4
  %8 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @IXGBE_FDIRCTRL_INIT_DONE, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %27, %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @IXGBE_FDIRCMD_CMD_POLL, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %19 = load i32, i32* @IXGBE_FDIRCMD, align 4
  %20 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %18, i32 %19)
  %21 = load i32, i32* @IXGBE_FDIRCMD_CMD_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %30

25:                                               ; preds = %17
  %26 = call i32 @udelay(i32 10)
  br label %27

27:                                               ; preds = %25
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %13

30:                                               ; preds = %24, %13
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @IXGBE_FDIRCMD_CMD_POLL, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %36 = call i32 @hw_dbg(%struct.ixgbe_hw* %35, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @IXGBE_ERR_FDIR_REINIT_FAILED, align 4
  store i32 %37, i32* %2, align 4
  br label %117

38:                                               ; preds = %30
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %40 = load i32, i32* @IXGBE_FDIRFREE, align 4
  %41 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %39, i32 %40, i32 0)
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %43 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %42)
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %45 = load i32, i32* @IXGBE_FDIRCMD, align 4
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %47 = load i32, i32* @IXGBE_FDIRCMD, align 4
  %48 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %46, i32 %47)
  %49 = load i32, i32* @IXGBE_FDIRCMD_CLEARHT, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %44, i32 %45, i32 %50)
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %53 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %52)
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %55 = load i32, i32* @IXGBE_FDIRCMD, align 4
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %57 = load i32, i32* @IXGBE_FDIRCMD, align 4
  %58 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %56, i32 %57)
  %59 = load i32, i32* @IXGBE_FDIRCMD_CLEARHT, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %54, i32 %55, i32 %61)
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %64 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %63)
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %66 = load i32, i32* @IXGBE_FDIRHASH, align 4
  %67 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %65, i32 %66, i32 0)
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %69 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %68)
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %71 = load i32, i32* @IXGBE_FDIRCTRL, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %70, i32 %71, i32 %72)
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %75 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %74)
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %90, %38
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @IXGBE_FDIR_INIT_DONE_POLL, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %76
  %81 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %82 = load i32, i32* @IXGBE_FDIRCTRL, align 4
  %83 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %81, i32 %82)
  %84 = load i32, i32* @IXGBE_FDIRCTRL_INIT_DONE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %93

88:                                               ; preds = %80
  %89 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %90

90:                                               ; preds = %88
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %4, align 4
  br label %76

93:                                               ; preds = %87, %76
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @IXGBE_FDIR_INIT_DONE_POLL, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %99 = call i32 @hw_dbg(%struct.ixgbe_hw* %98, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %100 = load i32, i32* @IXGBE_ERR_FDIR_REINIT_FAILED, align 4
  store i32 %100, i32* %2, align 4
  br label %117

101:                                              ; preds = %93
  %102 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %103 = load i32, i32* @IXGBE_FDIRUSTAT, align 4
  %104 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %102, i32 %103)
  %105 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %106 = load i32, i32* @IXGBE_FDIRFSTAT, align 4
  %107 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %105, i32 %106)
  %108 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %109 = load i32, i32* @IXGBE_FDIRMATCH, align 4
  %110 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %108, i32 %109)
  %111 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %112 = load i32, i32* @IXGBE_FDIRMISS, align 4
  %113 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %111, i32 %112)
  %114 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %115 = load i32, i32* @IXGBE_FDIRLEN, align 4
  %116 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %114, i32 %115)
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %101, %97, %34
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
